x = mouse_x-32;
y = mouse_y-32;
// dit hoort het te centreren, want de towers zijn 64x64

if(!place_snapped(64,64)){
	move_snap(64,64);
}
// grid systeempje