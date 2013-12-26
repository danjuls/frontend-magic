$ ->
  # (->
  #   new SocialFeed(el: $("#socialfeed")).addModule(new TwitterModule()).addModule(new InstagramModule('43653951')).start()
  # )()
  # skrollr.init
  #   smoothScrolling: true
  #   forceHeight: true

  parallaxer = new ParallaxScroller()
  parallaxer
    .addLayer("body section", 0.5, "background")
    .addLayer("body section h1", -1.25, "element")
    .addLayer("body section .wrapper.start-lax", -1.25, "element")
    .addLayer("body section .wrapper.about-lax", -0.25, "element")
    .addLayer("body section.beginning", 0, "element")
    .addLayer("body section.computer .one", -1.25, "element")
    .addLayer("body section.computer .two", -0.5, "element")
    .addLayer("body section.computer .three", -1, "element")
    .addLayer("body section .computer-title", -1, "element")
    .addLayer("body section .c64-image", -1, "element")

    # .addLayer "body section p", -2.5, "element"

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

  run = 0
  $(".term").terminal ((cmd, trm) ->
    console.log(cmd)
    if (cmd is "LOAD")
      trm.echo "PRESS PLAY ON TAPE"
      setTimeout (->
        trm.echo 'FOUND ENTER THE DRAGON'
      ), 5000
      # Activate loading screen

    else if(cmd is 'LOAD"ENTER THE DRAGON",8')
      run = 1
      trm.echo 'SEARCHING FOR ENTER THE DRAGON'
      setTimeout (->
        trm.echo 'LOADING'
      ), 1000
      setTimeout (->
        trm.echo 'READY'
      ), 3000

    else if(cmd is 'RUN')
      if (run == 1)
        console.log('apa')
      # Activate loading screen

    else
      trm.echo 'SYNTAX ERROR'

  ),
  prompt: ""
  greetings: "     **** COMMODORE 64 BASIC V2 ****\n\n" + " 64K RAM SYSTEM   38911 BASIC BYTES FREE\n\nREADY."
  keypress: (e, term) ->
    term.insert String.fromCharCode(e.which).toUpperCase()
    false


  width: 570
  height: 390

  computer = $(".computer")
  # yoda.waypoint (direction) ->
  #   context: '.start'
  #   offset: 4000px
  #   # handler: (direction) ->
  #   console.log('hit')
  #   $(this).toggleClass('jedi')
  #   # alert('hit')
  computer.waypoint ((direction) ->
    $(this).toggleClass('magic')
  ),
    offset: 50
