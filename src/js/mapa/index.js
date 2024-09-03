import L from 'leaflet';

const map = L.map('map', {
    center: [15.525158, -90.32959],
    zoom: 8,
    layers: []
});

L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

const markerLayer = L.layerGroup().addTo(map);

const icon = L.icon({
    iconUrl: './images/cargo.png',
    iconSize: [35, 35],
});

const coordenadas = [
    { origen: [14.6349, -90.5069], destino: [14.5553, -90.7334], estado: 'En Ruta' },
    { origen: [14.6349, -90.5069], destino: [14.6349, -90.5069], estado: 'En Bodega' },
    { origen: [14.6349, -90.5069], destino: [14.6397, -90.5133], estado: 'En Ruta' },
    { origen: [14.6349, -90.5069], destino: [14.6460, -90.5067], estado: 'Entregado' },
    { origen: [14.6349, -90.5069], destino: [14.5833, -90.4514], estado: 'En Ruta' },
    { origen: [14.6349, -90.5069], destino: [14.5784, -90.6532], estado: 'Entregado' },
    { origen: [14.6349, -90.5069], destino: [14.6183, -90.4999], estado: 'En Ruta' },
    { origen: [14.6349, -90.5069], destino: [14.5718, -90.5269], estado: 'En Bodega' },
    { origen: [14.6349, -90.5069], destino: [14.5553, -90.7334], estado: 'En Ruta' },
    { origen: [14.6349, -90.5069], destino: [14.5453, -90.7485], estado: 'En Ruta' },
    { origen: [14.6349, -90.5069], destino: [14.6349, -90.5069], estado: 'En Bodega' },
    { origen: [14.6349, -90.5069], destino: [14.6050, -90.5133], estado: 'En Bodega' },
    { origen: [14.6349, -90.5069], destino: [14.6397, -90.5133], estado: 'En Ruta' },
    { origen: [14.6349, -90.5069], destino: [14.6271, -90.5353], estado: 'En Ruta' },
    { origen: [14.6349, -90.5069], destino: [14.6460, -90.5067], estado: 'Entregado' },
    { origen: [14.6349, -90.5069], destino: [14.6550, -90.4900], estado: 'Entregado' },
    { origen: [14.6349, -90.5069], destino: [14.5833, -90.4514], estado: 'En Ruta' },
    { origen: [14.6349, -90.5069], destino: [14.5710, -90.4600], estado: 'En Ruta' },
    { origen: [14.6349, -90.5069], destino: [14.5784, -90.6532], estado: 'Entregado' },
    { origen: [14.6349, -90.5069], destino: [14.5800, -90.6700], estado: 'Entregado' },
    { origen: [14.6349, -90.5069], destino: [14.6183, -90.4999], estado: 'En Ruta' },
    { origen: [14.6349, -90.5069], destino: [14.6200, -90.4850], estado: 'En Ruta' }
];

const getColorByEstado = (estado) => {
    switch (estado) {
        case 'En Ruta':
            return 'orange';
        case 'Entregado':
            return 'green';
        case 'En Bodega':
            return 'red';
        default:
            return 'gray';
    }
};

coordenadas.forEach(({ origen, destino, estado }) => {
    L.marker(origen, { icon }).addTo(markerLayer);
    L.marker(destino, { icon }).addTo(markerLayer);
    L.polyline([origen, destino], { color: getColorByEstado(estado) }).addTo(markerLayer);
});
