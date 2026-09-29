// GUI v.d. room

height = room_height;
width=200;

// de towers mogen niet in de UI komen te staan, duh.
block=instance_create_layer(0,0,"Blocks",obj_blocked_1x1);
block.image_xscale=width;
block.image_yscale=height;

// tower buy UI
instance_create_layer(32,32,"AboveGUI", obj_purchase_tower_temp_fast);
instance_create_layer(104,32,"AboveGUI", obj_purchase_tower_temp_sniper);
instance_create_layer(32,128,"AboveGUI", obj_purchase_tower_temp_area);
instance_create_layer(104,128,"AboveGUI", obj_purchase_tower_temp_shockwave);
// instance_create_layer(32,224,"AboveGUI", obj_purchase_tower_temp_magic);

// situational buttons
instance_create_layer(32,576, "AboveGUI", btn_upgrade);
instance_create_layer(110,576, "AboveGUI", btn_sell);
instance_create_layer(128,672, "AboveGUI", btn_wave);