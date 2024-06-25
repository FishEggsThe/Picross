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
	for(var i = 0; i < rows; i++) {
		for(var j = 0; j < columns; j++) {
			grid_code += string(grid[i][j].blockData.state)
			//grid_code += string_char_at(global.base_twenty, Obj_Grid.grid[i][j].blockData.blockColorI)
			grid_code += string_copy(global.base_twenty, grid[i][j].blockData.blockColorI+1, 1)
		}
	}
	
	show_debug_message(grid_code)
	return grid_code
}

function TranslateGridCode(code) {
	// See CreateGridCode function for a good idea how it'll be translated
	with Obj_Control {
		var error_message = "This code is STUPID and UGLY, go back to code school and become WORTHY OF ENTRY"
		var info = string_split(code, "&")
	
		rowNum = real(info[0])
		columnNum = real(info[1])
		if string_length(info[2])/2 != (rowNum*columnNum) {
			show_message(error_message)
			show_debug_message(string_length(info[2]))
			return 0
		}
	
		var infoBlocks = array_create_ext(rowNum, function() {
			return array_create(columnNum, noone)
		})
		var index = 1
		try {
			for(var i = 0; i < rowNum; i++) {
				for(var j = 0; j < columnNum; j++) {
					show_debug_message(string(index/2) + " " + string_copy(info[2], index, 2))
					var infoState = real(string_copy(info[2], index, 1))
					var infoColor = string_pos(string_copy(info[2], index+1, 1), global.base_twenty)-1
					infoBlocks[i][j] = new Block(infoState, infoColor)
					index+=2
				}
			}
		} catch(errorlol) {
			show_message(error_message)
			show_debug_message(errorlol)
			return 0
		}
		
		blockArray = infoBlocks
		return 1
	}
}