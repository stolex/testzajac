package rs.zajac.development.pages;
import rs.zajac.core.ZajacCore;
import rs.zajac.development.events.PageEvent;
import rs.zajac.ui.BaseComponent;
import rs.zajac.ui.Button;
import rs.zajac.ui.Label;
import nme.events.Event;
import nme.events.MouseEvent;

/**
 * Main abstract page. All UI subpages extends this component
 * @author Aleksandar Bogdanovic
 */

class APage extends BaseComponent {

	public var buttonBack: Button;
	public var labelTitle: Label;
	
	public var title(default, set_title): String = 'Abstract Page';
	private function set_title(v: String): String {
		if (title != v) {
			title = v;
			if (labelTitle != null) {
				labelTitle.text = v;
			}
		}
		return v;
	}
	
	public function new() {
		super();
	}
	
	override public function initialize(): Void {
		buttonBack = new Button();
		buttonBack.label = 'Back';
		addChild(buttonBack);
		buttonBack.addEventListener(MouseEvent.CLICK, _onBackClick);
		
		labelTitle = new Label();
		labelTitle.text = title;
		addChild(labelTitle);
		
		orderElements();
		
		addEventListener(Event.RESIZE, _onResize);
	}
	
	private function _onBackClick(e: Event): Void {
		dispatchEvent(new PageEvent(PageEvent.BACK));
	}
	
	private function _onResize(e: Event): Void {
		orderElements();
	}
	
	private function orderElements(): Void {
		buttonBack.x = 0;
		buttonBack.y = 0;
		labelTitle.x = buttonBack.Width;
		labelTitle.y = 0;
		labelTitle.Width = Width - labelTitle.x;
	}
	
}