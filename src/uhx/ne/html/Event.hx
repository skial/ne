package uhx.ne.html;

class Event {
	
	public function new (type:String, ?eventInitDict:EventInit) {
		
	}
	
	public var bubbles(default, never):Bool;
	public var cancelable(default, never):Bool;
	public var currentTarget(default, never):EventTarget;
	public var defaultPrevented(default, never):Bool;
	public var eventPhase(default, never):Int;
	public var explicitOriginalTarget(default, never):EventTarget;
	public var isTrusted(default, never):Bool;
	public var originalTarget(default, never):EventTarget;
	public var target(default, never):EventTarget;
	public var timeStamp(default, never):Float;
	public var type(default, never):String;
	
	public function getPreventDefault ():Bool {
		return false;
	}
	
	public function initEvent (type:String, bubbles:Bool, cancelable:Bool):Void {
		
	}
	
	public function preventDefault ():Void {
		
	}
	
	public function stopImmediatePropagation ():Void {
		
	}
	
	public function stopPropagation ():Void {
		
	}
	
	public static inline var ALT_MASK:Int = 1;
	public static inline var AT_TARGET:Int = 2;
	public static inline var BUBBLING_PHASE:Int = 3;
	public static inline var CAPTURING_PHASE:Int = 1;
	public static inline var CONTROL_MASK:Int = 2;
	public static inline var META_MASK:Int = 8;
	public static inline var NONE:Int = 0;
	public static inline var SHIFT_MASK:Int = 4;
	
}
