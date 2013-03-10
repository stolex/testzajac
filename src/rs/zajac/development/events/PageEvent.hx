package rs.zajac.development.events;
import nme.events.Event;

/**
 * ...
 * @author Aleksandar Bogdanovic
 */

class PageEvent extends Event {

	inline public static var BACK: String = 'back';
	
	public function new(type: String) {
		super(type);
	}
	
}