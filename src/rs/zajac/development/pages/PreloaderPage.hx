package be.zajac.development.pages;
import rs.zajac.ui.PreloaderCircle;

/**
 * ...
 * @author Aleksandar Bogdanovic
 */

class PreloaderPage extends APage {

	public var test: PreloaderCircle;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		test = new PreloaderCircle();
		//test.segments = 20;
		//test.radius = 15;
		//test.color = 0xff;
		addChild(test);
		
		super.initialize();		
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		test.x = (Width - test.Width) / 2;
		test.y = (Height - test.Height) / 2;
	}
	
}