$(".introtoggler").click ->
  $("#introtoggle").toggle()

$(".rulestoggler").click ->
  $("#rulestoggle").toggle()

$(".paytoggler").click ->
  $("#paytoggle").toggle()


deckArray = [3,4,5,6,7,8,9,10,11,12,14,15,16,18,20,21,22,24,25,27,28,30,32,33,35,36,39,40,44,77]
handArray = []
upArray = []

theGame = d3.select("myhand").append("svg").attr("width",200).attr("height",300).attr("opacity",1)

handCards = theGame.selectAll("p")
                    .data(handArray)
                    .enter()
                    .append("p")

shuffle = (deckArray) ->
  counter = deckArray.length
  temp = undefined
  index = undefined

  # While there are elements in the array
  while counter > 0

    # Pick a random index
    index = Math.floor(Math.random() * counter)

    # Decrease counter by 1
    counter--

    # And swap the last element with it
    temp = deckArray[counter]
    deckArray[counter] = deckArray[index]
    deckArray[index] = temp
  deckArray


$("#startgame").click ->
  $("#gamemessage").text("")
  deckArray = [3,4,5,6,7,8,9,10,11,12,14,15,16,18,20,21,22,24,25,27,28,30,32,33,35,36,39,40,44,77]
  deckArray = shuffle deckArray
  handArray = []
  upArray = []
  upArray.push(deckArray.pop())
  handArray.push(deckArray.pop())
  handArray.push(deckArray.pop())
  handArray.push(deckArray.pop())
  $("#myhand").text("")
  d3.select("#myhand").selectAll("p").data(handArray).enter().append("p").text (d) ->
    d

  theGame.selectAll("rect").data(handArray).enter().append("rect").attr("x",10).attr("y",10).attr("width",50).attr("height",100).attr("fill","red")

  $("#facecard").text(upArray[upArray.length - 1])
  console.log deckArray

$("#drawcard").click ->
  handArray.push(deckArray.pop())
  $("#gamemessage").text("")
  $("#gamemessage").text("").prepend('<img id="failimg" src="http://www.i.minus.com/iQmVViGYz43sv.gif">') if deckArray.length is 0
  $("#myhand").text("")
  d3.select("#myhand").selectAll("p").data(handArray).enter().append("p").text (d) ->
      d
  $("#facecard").text(upArray[upArray.length - 1])


$("#myhand").click ->
  $("#gamemessage").text("")
  getEventTarget = (e) ->
    e = e or window.event
    e.target or e.srcElement
  p = document.getElementById("myhand")
  p.onclick = (event) ->
    target = getEventTarget(event)
    alert target.innerHTML
    return
  cardSelect = Number(getEventTarget().innerHTML)
  cardPosition = handArray.indexOf(cardSelect)

  if cardSelect % 4 is 0 and upArray[upArray.length - 1] % 4 is 0
    upArray.push(handArray.splice(cardPosition,1))
    $("#gamemessage").text("").prepend('<img id="failimg" src="https://38.media.tumblr.com/21417fbf48902a57d54dbca7b6730c59/tumblr_mqate6Ofim1r4s784o1_500.gif">') if handArray.length is 0
  else if cardSelect % 3 is 0 and upArray[upArray.length - 1] % 3 is 0
    upArray.push(handArray.splice(cardPosition,1))
    $("#gamemessage").text("").prepend('<img id="failimg" src="https://38.media.tumblr.com/21417fbf48902a57d54dbca7b6730c59/tumblr_mqate6Ofim1r4s784o1_500.gif">') if handArray.length is 0
  else if cardSelect % 5 is 0 and upArray[upArray.length - 1] % 5 is 0
    upArray.push(handArray.splice(cardPosition,1))
    $("#gamemessage").text("").prepend('<img id="failimg" src="https://38.media.tumblr.com/21417fbf48902a57d54dbca7b6730c59/tumblr_mqate6Ofim1r4s784o1_500.gif">') if handArray.length is 0
  else if cardSelect % 7 is 0 and upArray[upArray.length - 1] % 7 is 0
    upArray.push(handArray.splice(cardPosition,1))
    $("#gamemessage").text("").prepend('<img id="failimg" src="https://38.media.tumblr.com/21417fbf48902a57d54dbca7b6730c59/tumblr_mqate6Ofim1r4s784o1_500.gif">') if handArray.length is 0
  else if cardSelect % 11 is 0 and upArray[upArray.length - 1] % 11 is 0
    upArray.push(handArray.splice(cardPosition,1))
    $("#gamemessage").text("").prepend('<img id="failimg" src="https://38.media.tumblr.com/21417fbf48902a57d54dbca7b6730c59/tumblr_mqate6Ofim1r4s784o1_500.gif">') if handArray.length is 0
  else
    handArray.push(deckArray.pop())
    handArray.push(deckArray.pop())
    if deckArray.length is 0
      $("#gamemessage").text("").prepend('<img id="failimg" src="http://www.i.minus.com/iQmVViGYz43sv.gif">')
    else
      $("#gamemessage").prepend('<img id="failimg" src="http://media.giphy.com/media/aTg7Yt6793IUE/giphy.gif">')
  $("#myhand").text("")
  d3.select("#myhand").selectAll("p").data(handArray).enter().append("p").text (d) ->
      d
  $("#facecard").text(upArray[upArray.length - 1])


