rows = 5
columns = 5

grid = array_create(rows, array_create(columns, new Block(irandom(1), c_black)));
show_debug_message(grid[0][0].desiredState)
block = new Block(1, c_black)


