//move the player

var collisionObject = argument0;

if(place_meeting(x + hspd, y, collisionObject))
{
    while(!place_meeting(x+sign(hspd), y, collisionObject))
    {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;

if(place_meeting(x, y + vspd, collisionObject))
{
    while(!place_meeting(x, y+sign(vspd), collisionObject))
    {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;
