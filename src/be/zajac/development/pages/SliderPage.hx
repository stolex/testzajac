package be.zajac.development.pages;
import be.zajac.ui.Slider;

/**
 * ...
 * @author Aleksandar Bogdanovic
 */

class SliderPage extends APage {

	public var test: Slider;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		test = new Slider();
		addChild(test);
		
		super.initialize();
		title = 'Slider Example';
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		test.x = (Width - test.Width) / 2;
		test.y = (Height - test.Height) / 2;
	}
	
}