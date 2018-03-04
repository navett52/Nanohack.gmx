/// target_above(target) determines which side that the target is on from the calling object
// target_above(target) determines which side that the target is on from the calling object
/* We declare the direction variable.
 *
 * value >= 0 implies target is on right of calling object. I checked 
 * both outcomes of having 0 unique and what it is now, but didn't find any difference.
 * On the plus side, setting 1 for right and -1 for left allows us to utilize truthy and
 * falsy values target_right(target) is true if target is on right. !target_right(target)
 * is true if target is on left.
 * value < 0 implies target is on left of calling object.
 */
 var target_direction;

// Set the passed in object to target.
var target = argument[0];

// We just look at the x values of each object to determine direction.
if (target.y < y) {
    target_direction = -1
}
// Target x is either == x or greater than x
else {
    target_direction = 1
}

return target_direction;
