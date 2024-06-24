function SetGrid(rows, columns) {
	
	with Obj_Control {
		rowNum = rows
		columnNum = columns
		blockArray = noone
	}
}

function CreateGridCode(rows, columns, grid) {
	var grid_code = ""
	// Say we have a 2x2 grid, the code would be in two parts
	// 1) The grid matrix (2x2)
	grid_code += string(rows) + "&" + string(columns) + "&"
	
	// 2) Each block's desired state and color from left to right, up to down
	for(var i = 0; rows; i++) {
		for(var j = 0; columns; j++) {
			grid_code += string(grid[i][j].blockData.state)
			grid_code += string_char_at(global.base_twenty, grid[i][j].blockData.blockColor)
		}
	}
	
	show_debug_message(grid_code)
	return grid_code
}

function TranslateGridCode(code) {
	// See CreateGridCode function for a good idea how it'll be translated
	with Obj_Control {
		var error_message = "This code is STUPID AND UGLY, go back to code school and become WORTHY OF ENTRY"
		var info = string_split(code, "&")
		if string_length(code) != info[0]*info[1] {
			show_message(error_message)
			return 0
		}
	
		rowNum = info[0]
		columnNum = info[1]
	
		var infoBlocks = array_create_ext(rowNum, function() {
			return array_create(columnNum, noone)
		})
		var index = 0
		try {
			for(var i = 0; rowNum; i++) {
				for(var j = 0; columnNum; j++) {
					infoState = real(string_char_at(info[2], index))
					infoColor = string_pos(string_char_at(info[2], index+1), global.base_twenty)
					infoBlocks[i][j] = new Block(infoState, infoColor)
					index+=2
				}
			}
		} catch(errorlol) {
			show_message(error_message)
			return 0
		}
		
		blockArray = infoBlocks
		return 1
	}
}