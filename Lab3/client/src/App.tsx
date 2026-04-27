import { useEffect, useRef } from 'react'

import GeoJSON from 'ol/format/GeoJSON'
import { Map, View } from 'ol'
import TileLayer from 'ol/layer/Tile'
import VectorLayer from 'ol/layer/Vector'
import { OSM, Vector as VectorSource } from 'ol/source'
import { applyStyle } from 'ol-mapbox-style'

const MAP_CENTER: [number, number] = [5625071.318498041, 7028775.190074967]
const MAP_ZOOM = 16

const MAPBOX_CHOROPLETH_STYLE = {
  version: 8,
  sources: {
    overture: {
      type: 'geojson',
      data: '/overture.geojson',
    },
  },
  layers: [
    {
      id: 'overture-polygons',
      source: 'overture',
      type: 'fill',
      filter: ['==', ['geometry-type'], 'Polygon'],
      paint: {
        'fill-color': [
          'match',
          ['get', 'source_type'],
          'my',
          '#2E7D32',
          'osm',
          '#1E88E5',
          'ml',
          '#F57C00',
          '#9E9E9E',
        ],
        'fill-opacity': 0.6,
        'fill-outline-color': '#263238',
      },
    },
    {
      id: 'overture-lines',
      source: 'overture',
      type: 'line',
      filter: ['==', ['geometry-type'], 'LineString'],
      paint: {
        'line-color': [
          'match',
          ['get', 'source_type'],
          'my',
          '#2E7D32',
          'osm',
          '#1E88E5',
          'ml',
          '#F57C00',
          '#9E9E9E',
        ],
        'line-width': 3,
      },
    },
  ],
}

function App() {
  const mapContainerRef = useRef<HTMLDivElement | null>(null)
  const mapRef = useRef<Map | null>(null)

  useEffect(() => {
    if (!mapContainerRef.current || mapRef.current) return

    const overtureSource = new VectorSource({
      url: '/overture.geojson',
      format: new GeoJSON(),
    })

    const overtureLayer = new VectorLayer({
      source: overtureSource,
    })

    void applyStyle(overtureLayer, MAPBOX_CHOROPLETH_STYLE, {
      source: 'overture',
      updateSource: false,
    })

    const map = new Map({
      target: mapContainerRef.current,
      layers: [
        new TileLayer({ source: new OSM() }),
        overtureLayer,
      ],
      view: new View({
        center: MAP_CENTER,
        zoom: MAP_ZOOM,
      }),
    })

    overtureSource.once('featuresloadend', () => {
      const extent = overtureSource.getExtent()
      if (extent && Number.isFinite(extent[0])) {
        map.getView().fit(extent, { duration: 600, padding: [24, 24, 24, 24] })
      }
    })

    mapRef.current = map

    return () => {
      map.setTarget(undefined)
      mapRef.current = null
    }
  }, [])

  return <div ref={mapContainerRef} className="map-canvas" />
}

export default App
