package rs.zajac.development.pages;
import rs.zajac.core.ZajacCore;
import rs.zajac.ui.CheckBox;

/**
 * Checkbox test page
 * @author Aleksandar Bogdanovic
 */

class CheckBoxPage extends APage {

	public var test: CheckBox;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		test = new CheckBox();
		test.label = 'Select Me';
		addChild(test);
		
		super.initialize();
		title = 'CheckBox Example';
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		test.x = (Width - test.Width) / 2;
		test.y = (Height - test.Height) / 2;
	}
	
}