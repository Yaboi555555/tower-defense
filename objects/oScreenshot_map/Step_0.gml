if (zooming)
{
    zoom = lerp(zoom, target_zoom, zoom_speed);

    var new_w = start_cam_w / zoom;
    var new_h = start_cam_h / zoom;

    camera_set_view_size(cam, new_w, new_h);

    // camera centreren op sprite
    camera_set_view_pos(cam, x - new_w/2, y - new_h/2);

    // wanneer bijna exact fullscreen
    if (abs(zoom - target_zoom) < 0.01)
    {
        room_goto(Room_map);
    }
}

var hovering = point_in_rectangle(
    mouse_x, mouse_y,
    bbox_left,
    bbox_top,
    bbox_right,
    bbox_bottom
);

oMap_hover.visible = hovering;