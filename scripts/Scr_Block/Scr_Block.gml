function Block(ds, c) constructor
{
    desiredState = ds;
	// color = c
    blockColor = (desiredState ? c_black : c_white);
	state = 0
	

    static ChangeState = function(changeState)
    {
        state = changeState
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