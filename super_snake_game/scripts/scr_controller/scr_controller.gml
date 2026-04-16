function scr_controller(){
	var _right = keyboard_check(global.controller.right);
	var _left = keyboard_check(global.controller.left);
	var _up = keyboard_check(global.controller.up);
	var _down = keyboard_check(global.controller.down);

	if (_right) dir = 0;
	if (_up) dir = 90;
	if (_left) dir = 180;
	if (_down) dir = 270;
	
	// CALCULA PRÓXIMA POSIÇÃO
	var next_x = x + lengthdir_x(spd, dir);
	var next_y = y + lengthdir_y(spd, dir);

	// VERIFICA COLISÃO
	if (!place_meeting(next_x, next_y, obj_col)) {
    
	    x = next_x;
	    y = next_y;
    
	} else {
	    speed = 0;
	}

}