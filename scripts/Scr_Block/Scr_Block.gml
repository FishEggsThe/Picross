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