package rs.zajac.development.pages;
import rs.zajac.development.pages.APage;
import rs.zajac.events.ListEvent;
import rs.zajac.ui.List;

/**
 * ...
 * @author Aleksandar Bogdanovic
 */

class ListPage extends APage {

	public var test: List;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		test = new List();
		for (i in 0...30) {
			test.addItem('Item ' + i);
		}
		addChild(test);
		
		super.initialize();
		title = 'Label Example';
		test.addEventListener(ListEvent.SELECT, onSelect);
	}
	
	private function onSelect(evt:ListEvent):Void {
		//test.enabled = false;
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		test.x = (Width - test.Width) / 2;
		test.y = (Height - test.Height) / 2;
	}
}