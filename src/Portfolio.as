package{
	import ca.openbracket.PortfolioContext;
	import ca.openbracket.component.view.MenuView;
	
	import flash.display.Sprite;
	import flash.text.*;
	
	public class Portfolio extends Sprite{
		protected var context:PortfolioContext;
		private var _menu:MenuView;
		private var _viewHolder:Sprite;
		private var _title:TextField;
		private var _activeView:Sprite;
		
		[Embed(source='/assets/Ubuntu-R.ttf', fontName="ubuntubold", mimeType="application/x-font-truetype")]
		public var ubuntuBold:String;
		
		public function Portfolio(){
			context = new PortfolioContext(this);
			_menu = new MenuView();
			_menu.y = 50;
			addChild(_menu);
			
			_title = new TextField();
			_title.autoSize = TextFieldAutoSize.LEFT;
			_title.text = "Openbracket";			
			addChild(_title);
			
			_viewHolder = new Sprite();
			_viewHolder.y = 50;
			_viewHolder.x = _menu.width + 10;
			addChild(_viewHolder);
		}
		
		public function addView(view:Sprite):void{
			if(_activeView){
				_viewHolder.removeChild(_activeView);
			}
			
			_activeView = view;
			_viewHolder.addChild(view);
		}
	}
}