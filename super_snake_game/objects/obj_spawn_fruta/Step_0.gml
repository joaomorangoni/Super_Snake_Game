if(!instance_exists(obj_Apple)){
	sX = random_range(60, 1300);
	sY = random_range(70, 700);
	
	instance_create_layer(sX, sY, "fruits", obj_Apple);
}
