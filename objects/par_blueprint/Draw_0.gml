if(instance_exists(con_level)){
	if((place_meeting(x,y,par_tower) || //plaats een tower op een tower
		place_meeting(x,y,obj_blocked)) || //plaats een tower op een blocked area (check room layers)
		(cost > con_level.money)) //broke ahh
		{
		draw_set_color(c_red);
		draw_set_alpha(0.6);
		draw_rectangle(x,y,x+64,y+64,false);
		draw_set_alpha(1);
		draw_set_color(c_white);
	}
}

// range
draw_set_alpha(0.6);
draw_circle(x+32,y+32,range,false);
draw_set_alpha(1);
draw_self();