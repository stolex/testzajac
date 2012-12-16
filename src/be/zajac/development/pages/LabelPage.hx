package be.zajac.development.pages;
import be.zajac.ui.Label;

/**
 * ...
 * @author Aleksandar Bogdanovic
 */

class LabelPage extends APage {

	public var test: Label;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		test = new Label();
		test.text = 'Test Label';
		addChild(test);
		
		super.initialize();
		title = 'Label Example';
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		test.x = (Width - test.Width) / 2;
		test.y = (Height - test.Height) / 2;
	}
	
}