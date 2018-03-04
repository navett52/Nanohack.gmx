///player_move_state
var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

image_angle = point_direction(x, y, mouse_x, mouse_y);

if(up)
{
    vspd = -spd;
}
else if(down)
{
    vspd = spd;
}
else
{
    vspd = 0;
}

if(left)
{
    hspd = -spd;
}
else if(right)
{
    hspd = spd;
}
else
{
    hspd = 0;
}

move(obj_Solid, obj_Desk);
