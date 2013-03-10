package rs.zajac.development.pages;
import rs.zajac.ui.Label;

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
		test.backgroundColor = 0x222222;
		test.borderColor = 0xbbbbbb;
		test.roundness = 5;
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