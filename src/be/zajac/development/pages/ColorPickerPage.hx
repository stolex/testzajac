package be.zajac.development.pages;
import be.zajac.ui.ColorPicker;

/**
 * ...
 * @author Aleksandar Bogdanovic
 */

class ColorPickerPage extends APage {

	public var test: ColorPicker;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		test = new ColorPicker();
		test.selectedColor = 2178;
		addChild(test);
		
		super.initialize();
		title = 'ColorPicker Example';
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		test.x = Math.round((Width - test.Width) / 2);
		test.y = Math.round((Height - test.Height) / 2);
	}
	
}