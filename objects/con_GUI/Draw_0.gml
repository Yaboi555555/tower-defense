// left side, left side
var col_bg=make_color_rgb(130,75,46);
var col_section=make_color_rgb(211,188,141);

draw_set_color(col_bg);
draw_rectangle(0,0,width,height,false);
draw_set_color(col_section);
draw_rectangle(10,10,width-10,height/2,false);
draw_rectangle(10,height/2+20,width-10,height-100,false);
draw_set_color(c_white);

// standaard info
if(instance_exists(con_level)){
    var base_y=height-90;
	var wave=con_level.wave;
    var wave_col;
	var life = con_level.lifes;
	
    draw_text(10,base_y,"Money: "+string(con_level.money));
    if(wave>250) wave_col=make_color_rgb(255,0,255);
    else if(wave>150 && wave<251) wave_col=make_color_rgb(255,0,0);
    else if(wave>100 && wave<151) wave_col=make_color_rgb(255,80,0);
    else if(wave>50 && wave<101) wave_col=make_color_rgb(255,160,0);
    else if(wave>25 && wave<51) wave_col=make_color_rgb(255,220,0);
    else if(wave>10 && wave<26) wave_col=make_color_rgb(180,255,0);
    else wave_col=make_color_rgb(255,255,255);
    draw_set_color(wave_col);
    draw_text(10,base_y+20,"Wave: "+string(wave));
    draw_set_color(c_white);
    draw_text(10,base_y+40,"Lifes: "+string(con_level.lifes));
	draw_text(10,base_y+60,"Difficulty: "+string(con_level.difficulty));
}

// tower info
if(instance_exists(par_tower)){
    with(par_tower){
        if(selected){
            var info_y=other.height/2;
            draw_sprite(sprite_index,0,80,info_y+30);
            draw_text(15,info_y+100,"Range: "+string(range));
            draw_text(15,info_y+120,"Damage: "+string(damage));
            draw_text(15,info_y+140,"Upgrade: "+string(upgradecost));
			draw_text(15,info_y+160,"Hitspeed: "+string(hitspd));
        }
    }
}
