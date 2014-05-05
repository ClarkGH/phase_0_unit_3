$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
 
 var bodyElement = $('body')
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 
 $('h1').css({'color': 'blue'})
 $('h1').css({'border-style': 'solid'})
 $('h1').css({'visibility': 'visible'})

 $(".mascot").children("h1").html("<h1> Fence Lizards </h1>")

 $('img').on('mouseover', function(e){
 	e.preventDefault()
  $(this).attr('src', 'http://fc06.deviantart.net/fs71/i/2012/184/7/2/fence_lizard_by_eaross-d55v44k.jpg')
 })

 $('img').on('click', function(e){
 	e.preventDefault()
  $(this).attr('src', 'dbc_logo.jpg')
 })

//RELEASE 3: Event Listener
  // Add the code for the event listener here 
$('img').on('mouseover', function(e){
  e.preventDefault()
  $(this).attr('src', 'http://fc06.deviantart.net/fs71/i/2012/184/7/2/fence_lizard_by_eaross-d55v44k.jpg')
  $('img').animate({
	height: 350
	})
})

$('img').on('click', function(e){
 	e.preventDefault()
  $(this).attr('src', 'dbc_logo.jpg')
})

 
//RELEASE 4 : Experiment on your own
 
//see lines 37-39

 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
