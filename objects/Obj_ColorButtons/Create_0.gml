for(var i = 0; i < array_length(global.colors); i+=2) {
	for(var j = 0; j < 2; j++)
		with instance_create_layer(x+25*j, y+i*12.5, "Instances", Obj_ButtonCreateColor) 
		{colorIndex = i+j}
}