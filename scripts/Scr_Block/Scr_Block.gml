function Block(ds, c) constructor
{
    desiredState = ds;
	// blockColorI = c
    blockColorI = (desiredState ? 0 : 1);
	state = 0
	sprite = Spr_BlockTest
	size = sprite_get_width(sprite)
	setColor = 1
	

    static ChangeState = function(changeState, revert)
    {
        if (state == changeState && revert)
			state = 0
		else if state != changeState
			state = changeState
		
		switch (state){
			case 0:
				sprite = Spr_BlockTest
				//show_debug_message("Normal!")
				break
			case 1:
				sprite = Spr_BlockSmashedTest
				//show_debug_message("Smashed!")
				break
			case 2:
				if room == Rm_GridCreate
					break
				sprite = Spr_BlockMarkedTest
				//show_debug_message("Marked!")
				break
		}
    }
	static ChangeColorState = function(set)
	{
		setColor = set
	}
	static DrawBlock = function(bX, bY)
	{
		draw_set_valign(fa_middle)

		if setColor {gpu_set_fog(true, global.colors[blockColorI], 0, 1000)}
		draw_sprite_ext(sprite, 0, bX, bY, 
						1, 1, 0, 
						c_white, 1)
		gpu_set_fog(false, global.colors[blockColorI], 0, 1000)
				
		draw_set_color(c_red)
		if global.debug
			draw_text(bX+size/2, bY+size/2, desiredState)
	}
}

function CreateBlock(bX, bY, ds, c)
{
	var block = instance_create_layer(bX, bY, "Instances", Obj_Block)
	block.blockData = new Block(ds, c)
	return block;
}