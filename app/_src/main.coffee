$ ->
  # (->
  #   new SocialFeed(el: $("#socialfeed")).addModule(new TwitterModule()).addModule(new InstagramModule('43653951')).start()
  # )()
  # skrollr.init
  #   smoothScrolling: true
  #   forceHeight: true

  parallaxer = new ParallaxScroller()
  parallaxer
    .addLayer("body section.bg", 0.3, "background")
    # .addLayer("body section h1", -1.25, "element")
    .addLayer("body .flylax", 0, "element")

  $(window).stellar()

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

  # $('.star').each ->
    # position = Math.floor((Math.random()*100)+1) + "px"
    # $(this).addClass(position)
    # console.log(position)
    # $(this).css 'top', position



  listResponse =
    '<span class="tr"><span class="td">0 "DANIELS FUNHOUSE" 13 2A</span></span>\n
    <span class="tr"><span class="td">102</span><span class="td">"BLUE MAX 2001"</span><span class="td">PRG</span></span>\n
    <span class="tr"><span class="td">0</span><span class="td">"----------------"</span><span class="td">DEL</span></span>
    '

  run = 0
  list = 0
  $(".term").terminal ((cmd, trm) ->
    console.log(cmd)
    if (cmd is "LOAD")
      trm.echo "PRESS PLAY ON TAPE"
      setTimeout (->
        trm.echo 'FOUND ENTER THE DRAGON'
      ), 5000
      # Activate loading screen

    else if(cmd is 'LOAD"*",8' || cmd is 'LOAD "*",8')
      run = 1
      trm.echo 'SEARCHING FOR *'
      setTimeout (->
        trm.echo 'LOADING'
      ), 1000
      setTimeout (->
        trm.echo 'READY'
      ), 3000

    else if(cmd is 'LOAD"$",8' || cmd is 'LOAD "$",8')
      list = 1
      trm.echo 'SEARCHING FOR $'
      setTimeout (->
        trm.echo 'LOADING'
      ), 1000
      setTimeout (->
        trm.echo 'READY'
      ), 3000

    else if(cmd is 'LIST' && list == 1)
      trm.listEcho listResponse
      list = 0

    else if(cmd is 'RUN' && run == 1)
      # Activate loading screen

      console.log('apa')
      run = 0

    else
      trm.echo '?SYNTAX ERROR'
      trm.echo 'READY'
  ),
  prompt: ""
  greetings: "     **** COMMODORE 64 BASIC V2 ****\n\n" + " 64K RAM SYSTEM   38911 BASIC BYTES FREE\n\nREADY."
  keypress: (e, term) ->
    term.insert String.fromCharCode(e.which).toUpperCase()
    false


  width: 570
  height: 300
  start = $(".start")
  computer = $(".computer")
  starWars = $('#s5')
  # yoda.waypoint (direction) ->
  #   context: '.start'
  #   offset: 4000px
  #   # handler: (direction) ->
  #   console.log('hit')
  #   $(this).toggleClass('jedi')
  #   # alert('hit')
  start.waypoint ((direction) ->
    $(this).toggleClass('magic')
  ),
    offset: -50
  computer.waypoint ((direction) ->
    $(this).toggleClass('magic')
  ),
    offset: '25%'

  starWars.waypoint ((direction) ->
    $(this).toggleClass('jedi')
  ),
    offset: '20%'
