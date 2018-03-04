///replicate_state();
var project = instance_nearest(x, y, obj_Project);

var canSee = collision_line(x, y, project.x, project.y, obj_Solid, false, false);
var dist_to_target = point_distance(x, y, project.x, project.y);
if (!canSee && !place_meeting(x, y, project))
{
    var dir = point_direction(x, y, project.x, project.y);//The direction of the Player
    //Push the instance to the Player
    hspd = lengthdir_x(spd + 1, dir);
    vspd = lengthdir_y(spd + 1, dir);
    move(obj_Solid);
    if (hspd == 0 || vspd == 0)
    {
        state = roam_state;
    }
    atProject = false;
}
else if (canSee || dist_to_target > range)
{
    state = roam_state;
}


if (place_meeting(x, y, project) && atProject == false)
{
    //hspd = 0;
    //vspd = 0;
    atProject = true;
    alarm_set(1, 4 * room_speed);
}
