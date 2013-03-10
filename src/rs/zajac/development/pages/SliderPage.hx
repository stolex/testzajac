package rs.zajac.development.pages;
import rs.zajac.core.ZajacCore;
import rs.zajac.ui.Slider;

/**
 * ...
 * @author Aleksandar Bogdanovic
 */

class SliderPage extends APage {

	public var test: Slider;
	public var testV:Slider;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		test = new Slider();
		addChild(test);
		
		testV = new Slider();
		testV.borderColor = 0;
		testV.direction = Slider.DIRECTION_VERTICAL;
		//testV.buttonStyleName = ".stilZaButton";
		addChild(testV);
		
		super.initialize();
		title = 'Slider Example';
	}
	
	override public function orderElements(): Void {
		var c_x:Float;
		var c_y:Float;
		
		super.orderElements();
		
		c_x = (Width - test.Width - testV.Width - 5) / 2;
		c_y = (Height - test.Height - testV.Height - 5) / 2;
		
		test.x = c_x;
		test.y = c_y;
		
		c_x += test.Width + 5;
		c_y += test.Height + 5;
		
		testV.x = c_x;
		testV.y = c_y;
		
	}
	
}