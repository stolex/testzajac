package be.zajac.development.pages;
import be.zajac.ui.TextInput;

/**
 * ...
 * @author Aleksandar Bogdanovic
 */

class TextInputPage extends APage {

	public var test: TextInput;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		test = new TextInput();
		test.text = 'Test Input';
		addChild(test);
		
		super.initialize();
		title = 'TextInput Example';
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		test.x = (Width - test.Width) / 2;
		test.y = (Height - test.Height) / 2;
	}
	
}