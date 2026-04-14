var _colx = instance_place(x + spdH, y, obj_col); 

if (_colx) {
	
	if (spdH > 0)
	{ 
		 x = _colx.bbox_left + (x - bbox_right);
		 
		 
	}
	
	// Checando esquerda
	if (spdH < 0) 
	{
		x = _colx.bbox_right + (x - bbox_left);
	}
	
	spdH = 0;
}

var _colv = instance_place(x, y + spdV, obj_col);
if (_colv) {
	
	// Checando se está indo para baixo
	if (spdV > 0)
	{ 
		y = _colv.bbox_top + (y - bbox_bottom);
	}
	
	// Checando cima
	if (spdV < 0) 
	{
		y = _colv.bbox_bottom + (y - bbox_top);
	}
	
	spdV = 0;
}

x += spdH;
y += spdV;