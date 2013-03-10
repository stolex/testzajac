package rs.zajac.development.pages;
import rs.zajac.core.ZajacCore;
import rs.zajac.ui.Button;
import nme.events.MouseEvent;

/**
 * Sample page for button
 * @author Aleksandar Bogdanovic
 */

class ButtonPage extends APage {

	public var test: Button;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		test = new Button();
		test.label = 'Click Me';//set button label
			//custom colors
		test.color = 0xffffff;	//button text color
		test.borderColor = 0xff00;//button border color
		test.backgroundColor = 0x559900;
		
		addChild(test);
		
		super.initialize();
		title = 'Button Example';
		
		test.addEventListener(MouseEvent.CLICK, onMouse);
	}
	
		//uncoment to disable button on click
	private function onMouse(e:MouseEvent):Void {
		//test.enabled = false;
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		test.x = Math.round((Width - test.Width) / 2);
		test.y = Math.round((Height - test.Height) / 2);
	}
	
}