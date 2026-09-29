/// @description healthbar + healing
draw_healthbar(x-33,y+40,x+31,y+42,(hp/mhp)*100,c_black,c_red,c_lime,0,false,false); //blijkbaar is dit gwn een standaardfunctie?? zat oprecht zo lang rond te kloten om een slechtere bar te krijgen
draw_self();

// healing circle
draw_set_alpha(0.8);
draw_set_color(c_white);
draw_circle(x,y,heal_radius,true);
draw_set_alpha(1);
