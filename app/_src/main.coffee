$ ->
  # (->
  #   new SocialFeed(el: $("#socialfeed")).addModule(new TwitterModule()).addModule(new InstagramModule('43653951')).start()
  # )()
  skrollr.init
    smoothScrolling: true
    forceHeight: true

  # maxWidth = $(window).width()
  # maxHeight = $(window).height()
  # $(".start, .yoda, .about, .skills, .social").css
  #   width: maxWidth
  #   height: maxHeight

  # $(".map").gMap
  #   zoom: 15
  #   markers: [
  #     latitude: 57.703244
  #     longitude: 12.284946
  #   ]

  yoda = $(".yoda")
  # yoda.waypoint (direction) ->
  #   context: '.start'
  #   offset: 4000px
  #   # handler: (direction) ->
  #   console.log('hit')
  #   $(this).toggleClass('jedi')
  #   # alert('hit')
  yoda.waypoint ((direction) ->
    $(this).toggleClass('jedi')
  ),
    offset: 300
