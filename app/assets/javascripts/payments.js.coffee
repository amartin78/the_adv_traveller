# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


    $(document).ready ->
  		$("#payments_tag").on("ajax:success", ( e, data, status, xhr ) -> 
    		$("#payments_tag").append xhr.responseTest)
  		$("#payments_tag").on "ajax:error", (e, xhr, status, error) -> 
    		$("#payments_tag").append "<p>ERROR</p>"

