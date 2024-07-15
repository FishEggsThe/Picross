if instance_exists(Obj_Grid) <= 0 {
	show_message("Shouldn't be made unless you can hang a grid on it")
	instance_destroy()
}
size = sprite_width
width = Obj_Control.rowNum
height = Obj_Control.columnNum

tiles = [4, 1, 2, 
		 3, 0, 5,
		 6, 7, 8]

show_message(string(room_width) + ", " + string(room_height))
for(var i = -1; i < height+1; i++) {
	for(var j = -1; j < width+1; j++) {
		var xPos = x+i*size
		var yPos = y+j*size
		// Tile stuff
		var lay_id = layer_get_id("Tiles_GridFrame");
		var map_id = layer_tilemap_get_id(lay_id);
		var px = tilemap_get_cell_x_at_pixel(map_id, xPos, yPos);
		var py = tilemap_get_cell_y_at_pixel(map_id, xPos, yPos);
		
		var tileIndex = 0
		if j == -1 {
			//show_debug_message("top")
			tileIndex = DecideTileGridFrame(i, 0, height)
		} else if j == width {
			//show_debug_message("bottom")
			tileIndex = DecideTileGridFrame(i, 6, height)
		} else {
			//show_debug_message("mid")
			tileIndex = DecideTileGridFrame(i, 3, height)
		}
		
		tilemap_set(map_id, tiles[tileIndex], px, py)
	}
}