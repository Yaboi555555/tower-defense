event_inherited();
if(instance_exists(con_level)){
    hp=round(con_level.wave);
    mhp=hp;
}
spd=0.45;
heal_radius=100;
heal_amount=1;
heal_interval=30; // 1/60 sec. per value als het goed is
alarm[0]=heal_interval;
