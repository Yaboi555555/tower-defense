draw_set_font(fTutorial);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw everything before the "360" line
draw_text(x, y,
    "Your goal is to survive\n" +
    "at least 50 waves in each level.\n" +
    "Survive all waves to win\n" +
    "the game.\n" +
    "\n" +
    "In the Tower Defense,\n" +
    "you must stop the\n" +
    "monsters by building and upgrading\n" +
    "your defense.\n" +
    "\n" +
    "There are 4 towers:\n" +
    "\n" +
    "SMG Tower: Firepower: 1/5, Hitrate: 5/5\n" +
    "Sniper Tower: Firepower: 5/5, Hitrate: 1/5\n" +
    "Shotgun Tower: Firepower: 3/5, Hitrate: 2/5\n" +
    "Shockwave Tower: Firepower: ?/5, Hitrate: 3/5");
var yc = y + string_height("A")*9 ;
var tc = "The shockwave tower has a full 360 deg. range";
draw_set_halign(fa_left);

var xc = x - string_width(tc)/2; // dit duurde oprecht een uur ofzo
var f= "The shockwave tower has a full ";
var B= "360";
var e= " deg. range";

draw_set_color(c_white);
draw_text(xc, yc, f);

draw_set_color(#8ACE00); // bumpin' that
draw_text(xc + string_width(f), yc, B);

draw_set_color(c_white);
draw_text(xc + string_width(f) +string_width(B), yc, e);

yc += string_height("A");
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x, yc, "but... it comes at a cost!");