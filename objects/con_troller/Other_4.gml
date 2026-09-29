if (room == rm_lev0 || room == rm_lev1 || room == rm_lev2 || room == rm_settings0) {
    display_set_gui_size(1024, 768);
    gpu_set_texfilter(true);
    if (camera_exists(view_camera[0])) {
        camera_set_view_size(view_camera[0], 1024, 768);
    }
}
else {
    display_set_gui_size(640, 480);
    gpu_set_texfilter(false);
    if (camera_exists(view_camera[0])) {
        camera_set_view_size(view_camera[0], 640, 480);
    }
}