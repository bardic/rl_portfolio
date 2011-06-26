package ca.openbracket.command{
	import org.robotlegs.mvcs.Command;
	
	public class StartupCommand extends Command{
		override public function execute():void{
			trace("Here I want to load the xml to configure the site")
		}
	}
}