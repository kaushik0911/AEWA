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

var myIndex = 0;
carousel();
function carousel() {
  var i;
  var x = document.getElementsByClassName("slider-container");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) { myIndex = 1 }    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000); // Change image every 4 seconds
}

var slideIndex = 1;
showDivs(slideIndex);

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var dots = document.getElementsByClassName("slider-container");
  if (n > dots.length) {slideIndex = 1}
  if (n < 1) {slideIndex = dots.length}
  for (i = 0; i < dots.length; i++) {
    dots[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" w3-white", "");
  }
  dots[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-white";
}

function openStatus(evt, status) {
  var i, x, tablinks;
  x = document.getElementsByClassName("projects");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" w3-border-red", "");
  }
  document.getElementById(status).style.display = "block";
  evt.currentTarget.firstElementChild.className += " w3-border-red";
}