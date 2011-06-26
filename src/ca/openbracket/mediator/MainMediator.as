package ca.openbracket.mediator{
	import ca.openbracket.component.view.MenuView;
	import ca.openbracket.view.MainView;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class MainMediator extends Mediator{		
		[Inject]public var view:MainView;
		
		public function MainMediator(){
			super();
		}
	}
}