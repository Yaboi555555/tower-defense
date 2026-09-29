if(selected){
	draw_set_alpha(0.6);
	draw_rectangle(x,y,x+64,y+64,0);
	draw_circle(x+32,y+32,range,0);
	draw_set_alpha(1);
}
draw_self();
