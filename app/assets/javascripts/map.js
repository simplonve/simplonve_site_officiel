var tilesService = new L.tileLayer('http://{s}.mqcdn.com/tiles/1.0.0/osm/{z}/{x}/{y}.png', {
		attribution: '',
		subdomains: ['otile1', 'otile2', 'otile3', 'otile4'],
		maxZoom: 18
	});

var map = L.map('map').setView([44.912404, 4.43767360689655], 8).addLayer(tilesService);

var circle = L.circle([44.912404, 4.43767360689655], 50,{
	color: 'red',
	fillColor: '#f03',
	fillOpacity: 0.5
}).addTo(map);

circle.bindPopup("Simplon.VE").openPopup();	