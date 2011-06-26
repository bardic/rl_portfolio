package ca.openbracket{
	import ca.openbracket.command.ChangeViewCommand;
	import ca.openbracket.command.StartupCommand;
	import ca.openbracket.component.mediator.MenuMediator;
	import ca.openbracket.component.view.MenuView;
	import ca.openbracket.events.ChangeViewEvent;
	import ca.openbracket.mediator.MainMediator;
	import ca.openbracket.mediator.PortfolioMediator;
	import ca.openbracket.view.MainView;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	
	public class PortfolioContext extends Context{
		public function PortfolioContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true){
			super(contextView, autoStartup);
		}
		
		override public function startup():void{
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartupCommand, ContextEvent,true);
			commandMap.mapEvent(ChangeViewEvent.CHANGE_VIEW, ChangeViewCommand, ChangeViewEvent);			
			
			mediatorMap.mapView(MainView,MainMediator);
			mediatorMap.mapView(Portfolio,PortfolioMediator);
			mediatorMap.mapView(MenuView,MenuMediator);
			
			//AboutView
			
			//contextView.addChild(new MainView());
			super.startup();	
		}
	}
}