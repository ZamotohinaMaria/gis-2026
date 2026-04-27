-- Устанавливаем нужные зависимости

INSTALL spatial;
LOAD spatial;

INSTALL httpfs;
LOAD httpfs;

INSTALL overture FROM community;
LOAD overture;

-- Загружаем наш GEOJson из ЛР 1

CREATE TABLE geo_data AS 
SELECT * 
FROM ST_Read('C://Users/Marishka/Desktop/code/gis-2026/Lab2/GeoJSON_lab1.json');

-- Проверяем что все сработало - смотрим инфу о таблице

PRAGMA table_info('geo_data');

-- Подключаемся к Overture Maps

-- Устанавливаем регион поиска

SET s3_region = 'us-west-2';

-- Получаем здания по нашей области правок из ЛР 1
-- Вместо buildings можно использовать places, transportation и т.д.

CREATE TABLE overture_buildings_polygons AS
         SELECT *
         FROM read_parquet(
             's3://overturemaps-us-west-2/release/2026-04-15.0/theme=buildings/type=building/*.parquet',
             hive_partitioning = true
         )
         WHERE bbox.xmin <= 50.5286426
           AND bbox.xmax >= 50.5257511
           AND bbox.ymin <= 53.2477745
           AND bbox.ymax >= 53.24696;

-- Также проверяем всю информацию

PRAGMA table_info(overture_buildings_polygons);

-- Сначала расширим схему таблицы - добавляем столбец source_type

ALTER TABLE overture_buildings_polygons ADD COLUMN source_type TEXT;

-- Обновляем таблицу, помечая как my здания, чья геометрия имеет пространственное 
-- пересечение с геометрией нашего слоя

UPDATE overture_buildings_polygons
SET source_type = 'my'
WHERE EXISTS (
    SELECT 1
    FROM geo_data gd
    WHERE ST_Intersects(overture_buildings_polygons.geometry, gd.geom)
);

-- Проверяем что все сработало

SELECT COUNT(*) FROM overture_buildings_polygons WHERE source_type = 'my';

-- Теперь помечаем метками osm и ml на основе источника

UPDATE overture_buildings_polygons
SET source_type = CASE
    WHEN sources::VARCHAR ILIKE '%OpenStreetMap%' THEN 'osm'
    WHEN sources::VARCHAR ILIKE '%Microsoft%' OR sources::VARCHAR ILIKE '%Google%' OR sources::VARCHAR ILIKE '%ML%' THEN 'ml'
    ELSE 'unknown'
END
WHERE source_type IS NULL;

-- Проверка

SELECT source_type, COUNT(*) FROM overture_buildings_polygons GROUP BY source_type;

-- Начинаем экспорт. Чтобы не возникало ошибки геоданны, нужно выполнить команду:

SET geometry_always_xy = true;

-- Копируем все в GeoJson

COPY (
    SELECT *
    FROM overture_buildings_polygons
) TO 'overture.geojson' 
WITH (FORMAT GDAL, DRIVER 'GeoJSON');