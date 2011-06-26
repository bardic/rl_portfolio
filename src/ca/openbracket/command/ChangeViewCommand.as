package ca.openbracket.command{
	import ca.openbracket.events.ChangeViewEvent;
	
	import org.robotlegs.mvcs.Command;
	
	public class ChangeViewCommand extends Command{
		[Inject]public var changeViewEvent:ChangeViewEvent;
		override public function execute():void{
			trace("Change view", changeViewEvent.newView);
		}
	}
}