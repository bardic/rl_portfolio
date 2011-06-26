package ca.openbracket.mediator{
	import ca.openbracket.view.MainView;
	
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class PortfolioMediator extends Mediator{
		[Inject]public var view:Portfolio;
		override public function onRegister():void{
			view.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(ev:Event):void{
			view.addView(new MainView());				
		}
	}
}