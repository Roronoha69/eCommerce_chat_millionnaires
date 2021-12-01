// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

$('.navTrigger').click(function () {
  $(this).toggleClass('active');
  console.log("Clicked menu");
  $("#mainListDiv").toggleClass("show_list");
  $("#mainListDiv").fadeIn();

});

var tImages = [ 
  'photo-chat-1.jpeg',
  'photo-chat-8.jpeg',
  'photo-chat-9.jpeg',
  'photo-chat-10.jpeg',
  'photo-chat-11.jpeg',
  'photo-chat-12.jpeg',
  'photo-chat-13.jpeg',
  'photo-chat-14.jpeg',
  'photo-chat-15.jpeg',
  'photo-chat-16.jpeg',
  'photo-chat-17.jpeg',
  'photo-chat-18.jpeg',
  'photo-chat-19.jpeg'
  ];
  
  
  function demarage() {
  
    var monImage = document.createElement('img');
  
    monImage.src = tImages[x];
  
    var maDiv = document.getElementById("bleu");
  
    maDiv.innerHTML = '';
  
    maDiv.appendChild(monImage);
  
  
  window.addEventListener("load",demarrage);}
  
  var monImage = document.createElement('img');
