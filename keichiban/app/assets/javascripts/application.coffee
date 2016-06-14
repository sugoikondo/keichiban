#= require jquery
#= require jquery.turbolinks
#= require jquery_ujs
#= require turbolinks
#= require angular.min
#= require app
#= require materialize-sprockets
#= require materialize/extras/nouislider
#= require map_helper
#= require_tree .
$ ->
  $('.button-collapse').sideNav
    menuWidth: 300
    edge: 'right'
    closeOnClick: true

  triggerMap = (params) ->
    if $('.map-canvas').length
#      $.ajax(
#        type: 'GET',
#        url: '/search_map.json',
#        data: params,
#      ).done( (data) ->
      console.log("hoge")
      MapHelper.showMap($('.map-canvas').get(0),
        {
          mapHeight: $('.map-canvas').height
          mapLat: $('.map-canvas').attr('data-latitude'),
          mapLng: $('.map-canvas').attr('data-longitude'),
          zoom: 16,
          showMarker:   false,
          draggable:    false,
#          controller:   'stores',
#          titleField:   'name',
#        }, data)
        })
#      )

  triggerMap()
