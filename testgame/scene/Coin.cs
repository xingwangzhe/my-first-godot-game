using Godot;
using System;

public partial class Coin : Area2D
{

	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		GD.Print("youshit");
		
	}
	    //  Connect("body_entered", this, nameof(_on_body_entered));

    // 处理 'body_entered' 信号的方法
    private void _on_body_entered(Node body)
    {
        GD.Print(body.Name+"获得了金币");
		QueueFree();
    }

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
}
