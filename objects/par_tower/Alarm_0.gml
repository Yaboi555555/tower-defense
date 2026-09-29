if (instance_exists(par_enemy)) {
    var target=instance_nearest(x,y,par_enemy);

    if (target!=noone && point_distance(x,y,target.x,target.y)<=range) {
        var bullet=instance_create_layer(x+32,y+32, "Instances",obj_bullet); // note to self: x en y van de toren
        bullet.angle=point_direction(bullet.x,bullet.y,target.x,target.y);
        bullet.damage=damage;
    }
}
