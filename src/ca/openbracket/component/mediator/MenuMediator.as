package ca.openbracket.component.mediator{
	import ca.openbracket.component.view.MenuView;
	import ca.openbracket.events.ChangeViewEvent;
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class MenuMediator extends Mediator{
		[Inject]public var view:MenuView;
		override public function onRegister():void{
			view.addEventListener(ChangeViewEvent.CHANGE_VIEW, onChangeView);
		}
		
		private function onChangeView(ev:ChangeViewEvent):void{
			dispatch(ev);
		}
	}
}