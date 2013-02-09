package be.zajac.development.pages;
import be.zajac.core.FWCore;
import be.zajac.ui.ComboBox;

/**
 * ...
 * @author Aleksandar Bogdanovic
 */

class ComboBoxPage extends APage {

	public var testScroll: ComboBox;
	public var testAutoSize: ComboBox;
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		var c_items: Array<String>;
		
		testScroll = new ComboBox();
		c_items = [];
		for (i in 0...30) {
			c_items.push('Item ' + i);
		}
		testScroll.items = c_items;
		addChild(testScroll);
		
		
		testAutoSize = new ComboBox();
		c_items = [];
		for (i in 0...3) {
			c_items.push('Item ' + i);
		}
		testAutoSize.items = c_items;
		addChild(testAutoSize);
		
		super.initialize();
		title = 'ComboBox Example';
	}
	
	override public function orderElements(): Void {
		super.orderElements();
		testScroll.x = (Width - testScroll.Width) / 2;
		testScroll.y = (Height - testScroll.Height) / 2 - FWCore.getHeightUnit();
		testAutoSize.x = (Width - testAutoSize.Width) / 2;
		testAutoSize.y = testScroll.y + testScroll.Height + FWCore.getHeightUnit();
		//testAutoSize.y = Height - testAutoSize.Height - 10;
	}
	
}