function Block(ds, c) constructor
{
    desiredState = ds;
	// color = c
    blockColor = (desiredState ? c_black : c_white);
	state = 0
	sprite = Spr_BlockTest

    static ChangeState = function(changeState)
    {
        if state == changeState
			state = 0
		else
			state = changeState
		
		switch (state){
			case 0:
				sprite = Spr_BlockTest
				show_debug_message("Normal!")
				break
			case 1:
				sprite = Spr_BlockSmashedTest
				show_debug_message("Smashed!")
				break
			case 2:
				sprite = Spr_BlockMarkedTest
				show_debug_message("Marked!")
				break
		}
    }
	static ChangeToColor = function()
	{
		image_blend = blockColor
	}
}

function CreateBlock(bX, bY, ds, c)
{
	block = instance_create_layer(bX, bY, "Instances", Obj_Block)
	block.blockData = new Block(ds, c)
	return block
}