// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= jquery-ui.js
//= require_tree .


var x=$(document);
x.ready(inicio);

function inicio(){
    var x;
    x =$(".jumbotron");
    x.draggable();
}

$(function(){
    var _top = $(window).scrollTop();
    var _direction;
    $(window).scroll(function(){
        var _cur_top = $(window).scrollTop();
        if(_top < _cur_top)
        {
            _direction = 'down';
          $('.navbar').stop().fadeOut('fast');
        }
        else
        {
            _direction = 'up';
          $('.navbar').fadeIn('slow');
        }
        _top = _cur_top;
        console.log(_direction);
    });
});

$('.dropdown-toggle').dropdown()
