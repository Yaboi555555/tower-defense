if (instance_exists(par_enemy)) {
    var target=instance_nearest(x,y,par_enemy);
    if (target !=noone && point_distance(x,y,target.x,target.y)<=range) {
        var base_angle=point_direction(x,y,target.x,target.y);
        var pellets=pelletss;
        var spread=20;
        var step=spread/max(1,pellets-1);
        var start_angle = base_angle-spread*0.5;
        for (var i=0; i<pellets;i++) {
            var bullet=instance_create_layer(x+32,y+32,"Instances",obj_bullet);
            bullet.angle=start_angle+step*i;
            bullet.damage=damage/5;
        }
    }
}
