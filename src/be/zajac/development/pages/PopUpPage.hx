package be.zajac.development.pages;
import be.zajac.core.FWCore;
import be.zajac.managers.PopUpManager;
import be.zajac.ui.Button;
import be.zajac.ui.Label;
import be.zajac.ui.TextInput;
import nme.display.Sprite;
import nme.events.MouseEvent;
import nme.Lib;

/**
 * ...
 * @author Aleksandar Bogdanovic
 */

class PopUpPage extends APage {

	public var test: Button;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		test = new Button();
		test.label = 'PopUp';
		test.addEventListener(MouseEvent.CLICK, _openPopUp);
		addChild(test);
		
		super.initialize();
		title = 'PopUp Example';
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		test.x = (Width - test.Width) / 2;
		test.y = (Height - test.Height) / 2;
	}
	
	private var _popup: Sprite;
	
	private function _openPopUp(evt: MouseEvent): Void {
		if (_popup != null) return;
		
		_popup = new Sprite();
		_popup.graphics.beginFill(0xff0000);
		_popup.graphics.drawRect(0, 0, Lib.current.stage.stageWidth / 2, Lib.current.stage.stageHeight / 2);
		_popup.graphics.endFill();
		
		var c_label: Label = new Label();
		c_label.text = 'Test PopUp';
		c_label.x = c_label.y = 5;
		_popup.addChild(c_label);
		
		var c_button: Button = new Button();
		c_button.label = 'Close';
		c_button.x = 5;
		c_button.y = c_label.Height + 10;
		_popup.addChild(c_button);
		
		c_button.addEventListener(MouseEvent.CLICK, _closePopUp);
		
		PopUpManager.addPopUp(null, _popup, true);
		PopUpManager.centerPopUp(_popup);

	}
	
	private function _closePopUp(evt: MouseEvent): Void {
		if (_popup == null) return;
		PopUpManager.removePopUp(_popup);
		_popup = null;
	}
	
}