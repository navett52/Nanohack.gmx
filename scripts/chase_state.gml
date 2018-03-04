///chase_state();
var canSee = collision_line(x, y, obj_Player.x, obj_Player.y, obj_Solid, false, true);
if (canSee) {
    direction = point_direction(x, y, obj_Player.x, obj_Player.y);
    speed = spd;
}
else
{
    spd = 0;
    state = roam_state;
}

if (distance_to_object(obj_Player) > range)
{
    spd = 0;
    state = roam_state;    
}
