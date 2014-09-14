$ = require "jquery"

userLeg   = 0;
userClick = 0;

step = (e) ->
  $(e.target).addClass "pin-pushed"
  $(e.target).text userClick

clomp = (e) ->
  userClick += 1

pinEnable = ->
  $(".pin").on "mouseenter", step

clompEnable = ->
  $(".pin").on "click", clomp

$(document).ready ->
  $(document).on "click", (e) ->

    step(e)

    pinEnable()

    clompEnable()

    $(document).off "click"







