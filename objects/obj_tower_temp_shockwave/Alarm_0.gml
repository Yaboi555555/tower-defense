if (instance_exists(par_enemy)) {
    var target=instance_nearest(x,y,par_enemy);
    if (target!=noone && point_distance(x,y,target.x,target.y)<=range) {
        var base_angle=point_direction(x,y,target.x,target.y);
        var pellets=min(con_level.money,25); // bullet inflatie smh
        var step=360/max(1,pellets-1);
        var start_angle = base_angle-180;
        for (var i=0; i<pellets;i++) {
            var bullet=instance_create_layer(x+32,y+32,"Instances",obj_bullet);
            bullet.angle=start_angle+step*i;
            bullet.damage=damage*2/pellets;
        }
	con_level.money=max(con_level.money-pellets, 0) // peak financiën
    }
}
