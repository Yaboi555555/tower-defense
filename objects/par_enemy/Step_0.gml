/// death
depth= -y;
if(hp<=0){
	instance_destroy();
}

if(slow_timer>0){
    slow_timer--;
    spd=base_spd*0.5; // slowed
}else{
    spd=base_spd;     // normal speed
}
