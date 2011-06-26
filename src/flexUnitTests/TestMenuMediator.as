package flexUnitTests
{
	import ca.openbracket.component.mediator.MenuMediator;
	import ca.openbracket.events.ChangeViewEvent;
	
	import flash.events.EventDispatcher;
	
	import flexunit.framework.Assert;
	
	import org.fluint.uiImpersonation.UIImpersonator;

	public class TestMenuMediator
	{		
		private var menuMediator:MenuMediator;
		private var eventDispatcher:EventDispatcher;
		
		[Before]
		public function setUp():void
		{
			eventDispatcher = new EventDispatcher();
			menuMediator = new MenuMediator(); 	
			menuMediator.eventDispatcher = eventDispatcher;
		}
		
		[After]
		public function tearDown():void
		{
		}
		
		[BeforeClass]
		public static function setUpBeforeClass():void
		{
		}
		
		[AfterClass]
		public static function tearDownAfterClass():void
		{
		}
		
		[Test (async)]
		public function testChangeView():void{
			menuMediator.eventDispatcher.addEventListener(ChangeViewEvent.CHANGE_VIEW, onViewChanged);
			fakeMenuClick();
			//UIImpersonator
		}
		
		protected function fakeMenuClick():void
		{
			var ev:ChangeViewEvent = new ChangeViewEvent(ChangeViewEvent.CHANGE_VIEW, "view");
			menuMediator.eventDispatcher.dispatchEvent(ev);			
		}		
		
		
		protected function onViewChanged(ev:ChangeViewEvent):void
		{
			Assert.assertEquals("Ensure view is set: ", ev.newView != null, true);
			
		}
	}
}