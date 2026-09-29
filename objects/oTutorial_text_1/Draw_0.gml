draw_set_font(fTutorial);

draw_set_color(c_white);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y,
"Movement: " + "Use W, A, S, D keys to move your car.\n" +
"W: Move forward\n" +
"S: Move backward\n" +
"A / D: Steer left or right (while moving)\n\n" +
"Mouse Controls: " + "Use the left mouse button to \n" +
"select, place, upgrade, and sell towers.\n " +
"Use the right mouse button to \n" +
"deselect towers in purchase mode\n\n" +
"General Selection: \n" + "Also use the left mouse button \n" +
"for all other selections."
);

draw_set_halign(fa_left);
draw_set_valign(fa_top);