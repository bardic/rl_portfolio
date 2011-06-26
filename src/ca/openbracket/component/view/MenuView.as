package ca.openbracket.component.view{
	import ca.openbracket.events.ChangeViewEvent;
	
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class MenuView extends Sprite{
		public function MenuView(){
			super();
			var link1:TextField = new TextField();
			link1.selectable = false;
			link1.text = "Link 1";
			addChild(link1);
			
			var link2:TextField = new TextField();
			link2.selectable = false;
			link2.text = "Link 2";
			link2.y = 20;
			addChild(link2);
			
			var link3:TextField = new TextField();
			link3.selectable = false;
			link3.text = "Link 3";
			link3.y = 40;
			addChild(link3);
			
			link1.addEventListener(MouseEvent.CLICK, onMenuClick);
			link2.addEventListener(MouseEvent.CLICK, onMenuClick);
			link3.addEventListener(MouseEvent.CLICK, onMenuClick);
		}
		
		private function onMenuClick(ev:MouseEvent):void{
			dispatchEvent(new ChangeViewEvent(ChangeViewEvent.CHANGE_VIEW, "view"));
		}
	}
}