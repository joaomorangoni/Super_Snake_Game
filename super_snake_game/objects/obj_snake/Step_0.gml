scr_controller();

var food = instance_place(x, y, obj_Apple);
if (food != noone) {
    instance_destroy(food);
    
    scr_grow_snake(3); 
}

