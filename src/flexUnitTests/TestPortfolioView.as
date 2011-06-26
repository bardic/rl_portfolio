package flexUnitTests
{
	import ca.openbracket.view.AboutView;
	
	import flash.display.Sprite;

	public class TestPortfolioView
	{	
		private var portfolio:Portfolio;
		
		[Before]
		public function setUp():void
		{
			portfolio = new Portfolio();
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
		
		[Test(async)]
		public function testAddView():void{
			portfolio.addView(fakeView());
		}
		
		private function fakeView():Sprite
		{
			return new AboutView();			
		}
	}
}