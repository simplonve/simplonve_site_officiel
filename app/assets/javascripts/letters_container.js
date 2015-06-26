var lettersContainer = document.getElementById('mainText'),
	letters, 
	delay = 180,
	delayJump = 10,
	totalLetters;

letterer( lettersContainer );

letters = lettersContainer.getElementsByTagName('letter');
totalLetters = letters.length;

for( var i=0; i < totalLetters; i++ ){
	doTimer(letters[i], delay);
	delay += delayJump;
	if( letters[i].innerHTML == ' ' )
		delay += delayJump * 18;
}

function doTimer(letter, delay){
	setTimeout(function(){ 
		letter.removeAttribute('class');
	}, delay);
} 

function AffichageHeure(){
   var exempleHeure = exempleDate.toLocaleTimeString();
   document.getElementById('divDate').innerHTML = exempleHeure;
}

var exempleInterval = setInterval("AffichageHeure()", 1000);