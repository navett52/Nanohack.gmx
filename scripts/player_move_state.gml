///player_move_state
var right = keyboard_check(ord("D"));
var left = keyboard_check(ord("A"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var moving = false;
image_angle = point_direction(x, y, mouse_x, mouse_y);

if(up)
{
    vspd = -spd;
    moving = true;
}
else if(down)
{
    vspd = spd;
    moving = true;
}
else
{
    vspd = 0;
}

if(left)
{
    hspd = -spd;
    moving = true;
}
else if(right)
{
    hspd = spd;
    moving = true;
}
else
{
    hspd = 0;
}

if(moving && obj_PlayerStats.playerEnergy < obj_PlayerStats.playerEnergyMax)
{
    obj_PlayerStats.playerEnergy += 1.5;
    if(obj_PlayerStats.playerEnergy > obj_PlayerStats.playerEnergyMax)
    {
        obj_PlayerStats.playerEnergy = obj_PlayerStats.playerEnergyMax;
    }
}

 

move(obj_Solid, obj_Desk);
