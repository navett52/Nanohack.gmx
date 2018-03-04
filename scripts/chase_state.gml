///chase_state();
var canSee = collision_line(x, y, obj_Player.x, obj_Player.y, obj_Solid, false, false);
var dist_to_target = point_distance(x, y, obj_Player.x, obj_Player.y);
if (!canSee) {
    var dir = point_direction(x, y, obj_Player.x, obj_Player.y);//The direction of the Player
    //Push the instance to the Player
    hspd = lengthdir_x(spd + 2, dir);
    vspd = lengthdir_y(spd + 2, dir);
    move(obj_Solid);
}
else
{
    speed = 0;
    state = roam_state;
}

if (dist_to_target > range)
{
    speed = 0;
    state = roam_state;    
}
