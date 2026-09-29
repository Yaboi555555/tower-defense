/// @description wave start
// start de waves wanneer het knoppie wordt ingedrukt

if(start){
	alarm[0]=delay;
	start=false;
}

// *in Jigsaw voice* Game over
if(lifes<=0){
	game_restart();
}

/* 
if (wave>50 && monsters>0) {
	room_goto_next()
}
*/