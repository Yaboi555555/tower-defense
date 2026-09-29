// vooruit en achteruit
if (keyboard_check(ord("W"))) {
    speed += acceleration;
}
if (keyboard_check(ord("S"))) {
    speed -= acceleration;
}

// beperking max snelheid
speed = clamp(speed, -max_speed, max_speed);

// wrijving
if (!keyboard_check(ord("W")) && !keyboard_check(ord("S"))) {
    speed = lerp(speed, 0, friction);
}

// sturen
if (abs(speed) > 0.05) {
    if (keyboard_check(ord("A"))) {
        direction += turn_speed * sign(speed);
    }
    if (keyboard_check(ord("D"))) {
        direction -= turn_speed * sign(speed);
    }
}

// beweging
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// sprite keuze
if (direction > 235 && direction < 305) {
    sprite_index = sprite_up;
	image_angle = 0;
}
else if (direction > 55 && direction < 125) {
    sprite_index = sprite_down;
	image_angle = 0;
}
else {
    sprite_index = sprite_side;
	image_angle = direction;
}


if (place_meeting(x, y, oBorder)) {
    // X apart
    if (!place_meeting(x - lengthdir_x(speed, direction), y, oBorder)) {
        x -= lengthdir_x(speed, direction);
    }

    // Y apart
    if (!place_meeting(x, y - lengthdir_y(speed, direction), oBorder)) {
        y -= lengthdir_y(speed, direction);
    }

    speed = 0;
}


if (keyboard_check_pressed(ord("E"))) {

    if (place_meeting(x, y, btn_lev0)) {
        room_goto(rm_lev0);
    }
    
    if (place_meeting(x, y, btn_lev1)) {
        room_goto(rm_lev1);
    }
    
    if (place_meeting(x, y, btn_lev2)) {
        room_goto(rm_lev2);
    }
}