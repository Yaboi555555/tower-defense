/// death
depth= -y;
if(hp<=0){
	instance_destroy();
}

if(slow_timer>0){
    slow_timer--;
}else{
    spd=base_spd;
}
