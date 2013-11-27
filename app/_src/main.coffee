$ ->
  # (->
  #   new SocialFeed(el: $("#socialfeed")).addModule(new TwitterModule()).addModule(new InstagramModule('43653951')).start()
  # )()

  $.stellar()
    # scrollProperty: 'transform',
    # positionProperty: 'transform'

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
