// new wave 
function scr_next_wave() {

	if(instance_exists(con_level)){
		if (room==rm_lev0 || room==rm_lev1) {
			con_level.monsters=round(con_level.difficulty/5);
		} else if (room==rm_lev2) { // vrijwel het enige verschil in difficulty per level
			con_level.monsters=round(1.5*con_level.difficulty/5);
		}
		con_level.start=true;
		con_level.wave+=1;
		con_level.difficulty+=0.5;
		return 1;
	} 
}
