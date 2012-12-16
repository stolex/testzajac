package be.zajac.development;

import be.zajac.core.FWCore;
import be.zajac.util.TextFieldUtil;
import be.zajac.core.StyleManager;
import nme.display.Sprite;
import nme.events.Event;
import nme.Lib;

/**
 * ...
 * @author Ilic S Stojan
 */

class Main extends Sprite {
	
	public function new() {
		super();
		#if iphone
		Lib.current.stage.addEventListener(Event.RESIZE, init);
		#else
		addEventListener(Event.ADDED_TO_STAGE, init);
		#end
	}

	private function init(e) {
		// entry point
		TextFieldUtil.DEFAULT_FONT = "Arial";
		//StyleManager.addResource('css/t.css');
		addChild(new ComponentTest());
	}
	
	static public function main() {
		var stage = Lib.current.stage;
		stage.scaleMode = nme.display.StageScaleMode.NO_SCALE;
		stage.align = nme.display.StageAlign.TOP_LEFT;
		
		Lib.current.addChild(new Main());
	}
	
}
