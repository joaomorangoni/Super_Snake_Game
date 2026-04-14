function scr_controller(){
	var _right = keyboard_check(global.controller.right);
	var _left = keyboard_check(global.controller.left);
	var _up = keyboard_check(global.controller.up);
	var _down = keyboard_check(global.controller.down);


	if(_right) {
		spdH = spd;
		spdV = 0;
	}
	
	else if(_left) {
		spdH = -spd;
		spdV = 0;
	}
	
	else if(_up) {
		spdV = -spd;
		spdH = 0;
	}
	
	else if(_down) {
		spdV = spd;
		spdH = 0;
	}
	
	else {
		spdH = 0;
		spdV = 0;
	}
}