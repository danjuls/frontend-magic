initialize = ->
  featureOpts = [
    stylers: [
      hue: "#00ffe6"
    ,
      visibility: "simplified"
    ,
      gamma: 0.5
    ,
      weight: 0.5
    ]
  ,
    elementType: "labels"
    stylers: [visibility: "on"]
  ,
    featureType: "road",
    elementType: "geometry"
  ,
    featureType: "water"
    stylers: [color: "#0072ff"]
  ]
  mapOptions =
    zoom: 12
    center: harryda
    streetViewControl: false
    mapTypeControlOptions:
      mapTypeIds: [google.maps.MapTypeId.ROADMAP, MY_MAPTYPE_ID]

    mapTypeId: MY_MAPTYPE_ID

  map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions)
  styledMapOptions = name: "Custom Style"
  customMapType = new google.maps.StyledMapType(featureOpts, styledMapOptions)
  map.mapTypes.set MY_MAPTYPE_ID, customMapType
  marker = new google.maps.Marker(
    position: harryda
    map: map
    title: "Hello World!"
  )

map = undefined
harryda = new google.maps.LatLng(57.703244, 12.284946)
MY_MAPTYPE_ID = "custom_style"
google.maps.event.addDomListener window, "load", initialize
