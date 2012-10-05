package be.zajac.development;
import be.zajac.ui.Button;
import nme.display.Sprite;

/**
 * ...
 * @author Ilic S Stojan
 */

class ComponentTest extends Sprite{

	private var _button:Button;
	
	public function new() {
		super();
		run();
	}
	
	private function run() {
		_button = new Button();
		_button.setSize(120, 50);
		_button.roundness = 10;
		_button.x = 50;
		_button.y = 50;
		//_button.backgroundColor = 0xFFFA77;
		addChild(_button);
	}
	
}