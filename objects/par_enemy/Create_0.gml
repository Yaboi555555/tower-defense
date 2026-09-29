/// create
hp=1;
mhp=hp;
spd=1;
if(instance_exists(con_level)){
	money=round(con_level.wave/2); 
} else {
	money=0;
}

base_spd=spd;
slow_timer=0;
