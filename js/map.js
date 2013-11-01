var map;

function initialize() {
  var mapOptions = {
    zoom: 13,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

  // Try HTML5 geolocation
  if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var userLocation = new google.maps.LatLng(position.coords.latitude,
                                       position.coords.longitude);

      var infowindow = new google.maps.InfoWindow({
        map: map,
        position: userLocation,
        content: 'Você está aqui! :)'
      });

      map.setCenter(userLocation);
      addMarker(userLocation);
    }, function() {
      handleNoGeolocation(true);
    });
  } else {
    // Browser doesn't support Geolocation
    handleNoGeolocation(false);
  }
}

function handleNoGeolocation(errorFlag) {
  if (errorFlag) {
    var content = 'Erro: o serviço de geolocalização falhou :(';
  } else {
    var content = 'Erro: Seu navegador não suporta o serviço de geolocalização :(';
  }

  var options = {
    map: map,
    position: new google.maps.LatLng(60, 105),
    content: content
  };

  var infowindow = new google.maps.InfoWindow(options);
  map.setCenter(options.position);
}


function addMarker(location) {
    marker = new google.maps.Marker({
    position: location,
    map: map, 
    title: "Hello World!"
    });
    //markersArray.push(marker);
}

  google.maps.event.addDomListener(window, 'load', initialize);