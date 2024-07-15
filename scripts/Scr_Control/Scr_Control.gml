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
	// Long code way
	//for(var i = 0; i < rows; i++) {
	//	for(var j = 0; j < columns; j++) {
	//		grid_code += string(grid[i][j].blockData.state)
	//		//grid_code += string_char_at(global.base_twenty, Obj_Grid.grid[i][j].blockData.blockColorI)
	//		grid_code += string_copy(global.base_twenty, grid[i][j].blockData.blockColorI+1, 1)
	//	}
	//}
	
	// CHAD short code way
	for(var i = 0; i < rows; i++) {
		for(var j = 0; j < columns; j++) {
			var blockLetter = string_copy(global.alphabet, grid[i][j].blockData.blockColorI+1, 1)
			if grid[i][j].blockData.state
				blockLetter = string_upper(blockLetter)
			grid_code += blockLetter
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
		try {
	
			rowNum = real(info[0])
			columnNum = real(info[1])
			if string_length(info[2]) != (rowNum*columnNum) {
				show_message(error_message)
				show_debug_message(string_length(info[2]))
				return 0
			}
	
			var infoBlocks = array_create_ext(rowNum, function() {
				return array_create(columnName, noone)
			})
			var index = 1
			
			for(var i = 0; i < rowNum; i++) {
				for(var j = 0; j < columnNum; j++) {
					//show_debug_message(string(index/2) + " " + string_copy(info[2], index, 2))
					//var infoState = real(string_copy(info[2], index, 1))
					//var infoColor = string_pos(string_copy(info[2], index+1, 1), global.base_twenty)-1
					//infoBlocks[i][j] = new Block(infoState, infoColor)
					//index+=2
					
					var codeLetter = string_copy(info[2], index, 1)
					var infoState = -1
					if (ord(codeLetter) >= 65 && ord(codeLetter) <= 90)
						infoState = 1
					else if (ord(codeLetter) >= 97 && ord(codeLetter) <= 122)
						infoState = 0
					else
						throw("fake ass code")
					
					var infoColor = string_pos(string_lower(codeLetter), global.alphabet)-1
					infoBlocks[i][j] = new Block(infoState, infoColor)
					index++
				}
			}
			
			blockArray = infoBlocks
		} catch(errorlol) {
			show_message(error_message)
			show_debug_message(errorlol)
			return 0
		}
		
		return 1
	}
}