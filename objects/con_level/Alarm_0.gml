/// @description magnum opus right here
/*  
cycled door waves (wave%3==0) waarin x de remainder is na het delen. E.g. 8%3 geeft 2 remainder 2 != remainder 0 dus false.
houdt rekening met de eerste drie waves voor de zekerheid
extra tanky's want waarom niet (als het werkt) */

function spawn_enemy(e, x, y, p){
    with(instance_create_layer(x, y, "Instances", e)){
        path_start(p, spd, path_action_stop, true);
    }
}

var spawn_path;
if(room == rm_lev0) spawn_path = path_lev0;
else if(room == rm_lev1) spawn_path = path_lev1;
else if(room == rm_lev2) spawn_path = choose(path_lev2_1, path_lev2_2);
else if(room == rm_lev3) spawn_path = path_lev3;

if(monsters > 0){
    var spawn_x = path_get_point_x(spawn_path, 0);
    var spawn_y = path_get_point_y(spawn_path, 0);
    var extra_fast = false;

    var roll;
    if(wave < 10) roll = irandom_range(1, 10);
    else if(wave < 20) roll = irandom_range(1, 7);
    else if(wave < 30) roll = irandom_range(1, 5);
    else if(wave < 40) roll = irandom_range(1, 3);
    else roll = irandom_range(1, 2);
    if(roll == 2) extra_fast = true;
    if(extra_fast){
        spawn_enemy(obj_enemy_fast, spawn_x, spawn_y, spawn_path);
        monsters -= 1;
    }

    if(wave % 10 == 0 && wave != 1){ // boss 
        spawn_enemy(obj_enemy_boss, spawn_x, spawn_y, spawn_path);
        for(var i = 0; i < 3; i++) spawn_enemy(obj_enemy_tanky, spawn_x, spawn_y, spawn_path);
        for(var i = 0; i < 2; i++) spawn_enemy(obj_enemy_healer, spawn_x, spawn_y, spawn_path);
        monsters -= 6;
    } else if(wave % 3 == 0 || wave == 1){ // basic
        spawn_enemy(obj_enemy_basic, spawn_x, spawn_y, spawn_path);
        monsters -= 1;
    } else if(wave % 3 == 1 || wave == 2){ // fast
        spawn_enemy(obj_enemy_fast, spawn_x, spawn_y, spawn_path);
        monsters -= 1;
    } else { // tanky
        spawn_enemy(obj_enemy_tanky, spawn_x, spawn_y, spawn_path);
        monsters -= 1;
    }

    alarm[0] = delay;
}
