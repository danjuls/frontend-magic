$ ->
  # (->
  #   new SocialFeed(el: $("#socialfeed")).addModule(new TwitterModule()).addModule(new InstagramModule('43653951')).start()
  # )()

  $(window).stellar()
    # scrollProperty: 'transform',
    # positionProperty: 'transform'

  yoda = $(".yoda")
  yoda.waypoint (event, direction) ->
    $(this).toggleClass('jedi')
