if (follow_target != noone) {
    
    var dist = point_distance(x, y, follow_target.x, follow_target.y);
    
    if (dist > follow_distance) {
        var dir = point_direction(x, y, follow_target.x, follow_target.y);
        
        x += lengthdir_x(spd, dir);
        y += lengthdir_y(spd, dir);
    }
}