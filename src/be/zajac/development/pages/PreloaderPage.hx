package be.zajac.development.pages;
import be.zajac.ui.PreloaderCircle;

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
		addChild(test);
		
		super.initialize();		
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		test.x = (Width - test.Width) / 2;
		test.y = (Height - test.Height) / 2;
	}
	
}