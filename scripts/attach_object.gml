/// attach_object(objectName) - Instantiates the passed in object, attaching it to the caller. The object then has to check for the attached object and assign its x and y values.
var objectName = argument0;

with (instance_create(x,y,objectName)) {
    image_angle = other.direction;
    attached = other.id;
    offsetDir = x - other.x;
    offsetDist = y - other.y;
    initialAngle = 0;
}
