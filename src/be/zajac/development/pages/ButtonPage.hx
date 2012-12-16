package be.zajac.development.pages;
import be.zajac.core.FWCore;
import be.zajac.ui.Button;

/**
 * ...
 * @author Aleksandar Bogdanovic
 */

class ButtonPage extends APage {

	public var test: Button;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		test = new Button();
		test.label = 'Click Me';
		addChild(test);
		test.setSize(FWCore.getHeightUnit() * 5, FWCore.getHeightUnit());	// hack because button is not selecting default size
		
		super.initialize();
		title = 'Button Example';
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		test.x = (Width - test.Width) / 2;
		test.y = (Height - test.Height) / 2;
	}
	
}