package be.zajac.development.pages;
import be.zajac.core.FWCore;
import be.zajac.ui.Button;
import nme.events.MouseEvent;

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
		test.color = 0xffffff;
		test.borderColor = 0xff00;
		test.backgroundColor = 0x559900;
		addChild(test);
		
		super.initialize();
		title = 'Button Example';
		
		test.addEventListener(MouseEvent.CLICK, onMouse);
	}
	
	private function onMouse(e:MouseEvent):Void {
		trace('click');
		test.enabled = false;
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		test.x = Math.round((Width - test.Width) / 2);
		test.y = Math.round((Height - test.Height) / 2);
	}
	
}