import mapboxgl from 'mapbox-gl';

const form = document.getElementById("form-show")
console.log(form)
form.addEventListener('submit', (event) => {
  console.dir('inside');
  event.preventDefault(); // <-- to prevent <form>'s native behaviour
  const city = document.getElementById('query').value;
  console.log(city);
  const base_url = "https://api.mapbox.com/geocoding/v5/mapbox.places/"
  fetch(`${base_url}${city}.json?access_token=${mapElement.dataset.mapboxApiKey}`)
  .then(response => response.json())
  .then((data) => {
    console.log(data);
    const coords = data.features[0].geometry.coordinates
    const markers = [{lat: coords[1], lng: coords[0], infoWindow: `<div class="school"><p>Le wagon Bordeaux</p>↵<a href="https://www.google.fr/search?source=hp&amp;ei=nMxvXe_ELPiUk74PgaK_4Aw&amp;q=Le wagon Bordeaux">Site web</a></div>`}]
    console.log(markers)
    new mapboxgl.Marker()
    .setLngLat([ markers[0].lng, markers[0].lat ])
    .addTo(map);
    //addMarkersToMap(map, markers);
    // fitMapToMarkers(map, markers);
  });
});



const mapElement = document.getElementById('map');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
    console.dir(popup)
    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup)
      .addTo(map);
  });
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  if (mapElement) {
    const map = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    console.log(markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
