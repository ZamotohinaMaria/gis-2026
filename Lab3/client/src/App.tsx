import { useEffect, useRef } from 'react'

import { Map, View } from 'ol'
import ImageLayer from 'ol/layer/Image'
import TileLayer from 'ol/layer/Tile'
import { OSM } from 'ol/source'
import ImageWMS from 'ol/source/ImageWMS'

const MAP_CENTER: [number, number] = [5625071.318498041, 7028775.190074967]
const MAP_ZOOM = 16

function createWmsLayer(layerName: string) {
  return new ImageLayer({
    source: new ImageWMS({
      url: 'http://localhost:8080/geoserver/gis/wms',
      params: {
        LAYERS: layerName,
        TILED: true,
      },
      ratio: 1,
      serverType: 'geoserver',
    }),
  })
}

function App() {
  const mapContainerRef = useRef<HTMLDivElement | null>(null)
  const mapRef = useRef<Map | null>(null)

  useEffect(() => {
    if (!mapContainerRef.current || mapRef.current) return

    const map = new Map({
      target: mapContainerRef.current,
      layers: [
        new TileLayer({ source: new OSM() }),
        createWmsLayer('gis:buildings'),
        createWmsLayer('gis:roads'),
      ],
      view: new View({
        center: MAP_CENTER,
        zoom: MAP_ZOOM,
      }),
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
