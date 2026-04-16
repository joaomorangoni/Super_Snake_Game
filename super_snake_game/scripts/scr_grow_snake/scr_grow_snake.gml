function scr_grow_snake(){
	var amount = argument0;

	var head = obj_snake;
	var last;

	if (ds_list_size(head.body) == 0) {
	    last = head;
	} else {
	    last = head.body[| ds_list_size(head.body) - 1];
	}

	for (var i = 0; i < amount; i++) {
    
	    var new_part = instance_create_layer(last.x, last.y, "Player", obj_snake_body);
    
	    new_part.follow_target = last;
    
	    ds_list_add(head.body, new_part);
    
	    last = new_part;
	}
}