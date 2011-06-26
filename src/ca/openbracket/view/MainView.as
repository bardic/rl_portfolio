package ca.openbracket.view
{
	import flash.display.Sprite;
	import flash.text.TextField;
	
	public class MainView extends Sprite
	{
		public function MainView()
		{
			super();
			var txt:TextField = new TextField();
			txt.text = "Main view bitches!";
			addChild(txt);
		}
	}
}