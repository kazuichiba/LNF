// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require twitter/bootstrap
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function(){

  $(".alert").delay(1000).fadeOut(2000);

  $(".task-front").click(function(e){
    e.preventDefault();

    var sticky = $(e.target).closest('.task-front');

    var front = document.getElementById(sticky.attr('id'))
      , back_content = $('.sticky-form', sticky).prop("outerHTML")
      , back;

    back = flippant.flip(front, back_content, 'modal'); 

  });


});



// when the correct action happens, call flip!
// back = flippant.flip(front, back_content)
// this creates the back element, sizes it and flips it around.

// invoke the close event on the back element when it's time to close.

// call the close method on the back element when it's time to close.
// back.close()
// alternatively you can trigger a close event on the back element if you fancy.
// var close_event = new CustomEvent('close')
// back.dispatchEvent(close_event)
