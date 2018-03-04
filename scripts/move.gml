//move the player

for (var i = 0; i < argument_count; i++) 
{
    collisionObjects[i] = argument[i];
}

for (var i = 0; i < argument_count; i++) 
{
    if (place_meeting(x + hspd, y, collisionObjects[i]))
    {
        while(!place_meeting(x+sign(hspd), y, collisionObjects[i]))
        {
            x += sign(hspd);
        }
        hspd = 0;
    }
}
x += hspd;

for (var i = 0; i < argument_count; i++)
{
    if (place_meeting(x, y + vspd, collisionObjects[i]))
    {
        while(!place_meeting(x, y+sign(vspd), collisionObjects[i]))
        {
            y += sign(vspd);
        }
        vspd = 0;
    }   
}
y += vspd;
