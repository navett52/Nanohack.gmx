///Makes the nanobots roam

if (alarm_get(0) == -1)
{
    switch (dir)
    {
        case "up":
            dir = choose("down", "left", "right");
            break;
        case "down":
            dir = choose("up", "left", "right");
            break;
        case "left":
            dir = choose("up", "down", "right");
            break;
        case "right":
            dir = choose("up", "down", "left");
            break;
    }
    alarm_set(0, 5 * room_speed);
}

if (place_meeting(x + hspd, y + vspd, obj_Solid))
{
    switch (dir)
    {
        case "up":
            dir = choose("down", "left", "right");
            break;
        case "down":
            dir = choose("up", "left", "right");
            break;
        case "left":
            dir = choose("up", "down", "right");
            break;
        case "right":
            dir = choose("up", "down", "left");
            break;
    }
    alarm_set(0, 5 * room_speed);
}



var dist_to_target = point_distance(x, y, obj_Player.x, obj_Player.y);
var dist_to_project = 1000000;

if (instance_exists(obj_Project))
{
    var project = instance_nearest(x, y, obj_Project);
    var dist_to_project = point_distance(x, y, project.x, project.y);
}

if (dist_to_target < range)
{
    state = chase_state;
}
else if (dist_to_project < range)
{
    state = replicate_state;
}

hspd = 0;
vspd = 0;
switch (dir)
{
    case "up":
        vspd = -spd;
        break;
    case "down":
        vspd = spd;
        break;
    case "left":
        hspd = -spd;
        break;
    case "right":
        hspd = spd;
        break;
}
move(obj_Solid);
