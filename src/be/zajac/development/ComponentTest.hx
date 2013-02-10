package be.zajac.development;
import be.zajac.development.events.PageEvent;
import be.zajac.development.pages.APage;
import be.zajac.development.pages.ButtonPage;
import be.zajac.development.pages.CheckBoxPage;
import be.zajac.development.pages.ColorPickerPage;
import be.zajac.development.pages.ComboBoxPage;
import be.zajac.development.pages.LabelPage;
import be.zajac.development.pages.ListPage;
import be.zajac.development.pages.PopUpPage;
import be.zajac.development.pages.PreloaderPage;
import be.zajac.development.pages.RadioButtonPage;
import be.zajac.development.pages.SliderPage;
import be.zajac.development.pages.TextInputPage;
import be.zajac.events.ListEvent;
import be.zajac.ui.List;
import be.zajac.ui.Slider;
import nme.display.Sprite;
import nme.events.Event;
import nme.Lib;

/**
 * ...
 * @author Ilic S Stojan
 */

class ComponentTest extends Sprite {

	private var _list: List;
	private var _page: APage;
	
	public function new() {
		super();
		
		_list = new List();
		_list.selectable = false;
		_list.items = [
			'Label', 'TextInput', 'Button', 'CheckBox', 'RadioButton', 'Slider', 'List', 'ComboBox', 'Preloader', 'PopUp', 'ColorPicker'
		];
		_list.addEventListener(ListEvent.SELECT, _onSelect);
		addChild(_list);
		_showList();
		
		Lib.current.stage.addEventListener(Event.RESIZE, _onResize);
	}
	
	private function _onResize(e: Event = null): Void {
		if (_list.visible) {
			_list.Width = Lib.current.stage.stageWidth;
			_list.Height = Lib.current.stage.stageHeight;
		}
		if (_page != null) {
			_page.Width = Lib.current.stage.stageWidth;
			_page.Height = Lib.current.stage.stageHeight;
		}
	}
	
	private function _onSelect(e: ListEvent): Void {
		switch (e.data) {
			case 'Label':
				_showPage(new LabelPage());
			case 'TextInput':
				_showPage(new TextInputPage());
			case 'Button':
				_showPage(new ButtonPage());
			case 'CheckBox':
				_showPage(new CheckBoxPage());
			case 'RadioButton':
				_showPage(new RadioButtonPage());
			case 'Slider':
				_showPage(new SliderPage());
			case 'List':
				_showPage(new ListPage());
			case 'ComboBox':
				_showPage(new ComboBoxPage());
			case 'Preloader':
				_showPage(new PreloaderPage());
			case 'PopUp':
				_showPage(new PopUpPage());
			case 'ColorPicker':
				_showPage(new ColorPickerPage());
		}
	}
	
	private function _onPageBack(e: PageEvent): Void {
		_hidePage();
		_showList();
	}
	
	private function _hideList(): Void {
		_list.visible = false;
	}
	
	private function _showList(): Void {
		_list.visible = true;
		_onResize();
	}
	
	private function _hidePage(): Void {
		if (_page == null) return;
		_page.removeEventListener(PageEvent.BACK, _onPageBack);
		removeChild(_page);
		_page = null;
	}
	
	private function _showPage(p: APage): Void {
		_hideList();
		_hidePage();
		_page = p;
		addChild(_page);
		_page.addEventListener(PageEvent.BACK, _onPageBack);
		_onResize();
	}
	
}