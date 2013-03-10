package rs.zajac.development.pages;
import rs.zajac.ui.RadioButton;

/**
 * ...
 * @author Aleksandar Bogdanovic
 */

class RadioButtonPage extends APage {
	
	private var radio1:RadioButton;
	private var radio2:RadioButton;
	private var radio3:RadioButton;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		radio1 = new RadioButton();
		radio1.label = 'option 1';
		radio1.groupName = "group1";
		addChild(radio1);
		
		radio2 = new RadioButton();
		radio2.label = 'option 2';
		radio2.groupName = "group1";
		addChild(radio2);
		
		radio3 = new RadioButton();
		radio3.label = 'option 3';
		radio3.groupName = "group1";
		addChild(radio3);
		
		super.initialize();
		title = 'RadioButton Example';
		
	}
	
	override public function orderElements(): Void {
		var c_y:Int;
		var c_x:Int;
		
		super.orderElements();
		
		c_x = Math.round( (Width - 200) / 2);
		c_y = Math.round( (Height - 150) / 2);
		
		radio1.x = c_x;
		radio1.y = c_y;
		
		radio2.x = c_x;
		radio2.y = c_y + 50;
		
		radio3.x = c_x;
		radio3.y = c_y + 100;
	}
	
}