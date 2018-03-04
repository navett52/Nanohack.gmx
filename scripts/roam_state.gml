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
