package ca.openbracket.events{
	import flash.events.Event;
	
	public class ChangeViewEvent extends Event{
		public static const CHANGE_VIEW:String = "CHANGE_VIEW";
		private var _view:String;
		public function ChangeViewEvent(type:String, view:String, bubbles:Boolean=false, cancelable:Boolean=false){
			super(type, bubbles, cancelable);
			_view = view;
		}
		
		public function get newView():String{
			return _view;
		}

		override public function clone():Event{
			return new ChangeViewEvent(type,_view,bubbles,cancelable);
		}
	}
}