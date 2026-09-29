with(all){
    if(instance_exists(id) && // alles met een ID (enemies)
       id!=other.id && // geen self-heal
       object_index!=obj_enemy_healer && // geen healer heals
       variable_instance_exists(id,"hp") &&
       point_distance(x,y,other.x,other.y)<=other.heal_radius &&
       hp<mhp) // geen hp>mhp
    {
        hp=min(hp+other.heal_amount,mhp); // geen hp>mhp
    }
}
alarm[0]=heal_interval;
