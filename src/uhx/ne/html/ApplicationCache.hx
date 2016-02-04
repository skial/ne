package uhx.ne.html;

import haxe.Constraints.Function;	

@:forward abstract ApplicationCache(EventTarget) from EventTarget to EventTarget {
	
	public var oncached(get, set):Function;
	public var onchecking(get, set):Function;
	public var ondownloading(get, set):Function;
	public var onerror(get, set):Function;
	public var onnoupdate(get, set):Function;
	public var onobsolete(get, set):Function;
	public var onprogress(get, set):Function;
	public var onupdateready(get, set):Function;
	public var status(get, never):Int;
	
	public inline function new() {
		
	}
	
	public function swapCache ():Void {
		
	}
	
	public function update ():Void {
		
	}
	
	public static inline var CHECKING:Int = 2;
	public static inline var DOWNLOADING:Int = 3;
	public static inline var IDLE:Int = 1;
	public static inline var OBSOLETE:Int = 5;
	public static inline var UNCACHED:Int = 0;
	public static inline var UPDATEREADY:Int = 4;
	
	private function get_oncached():Function return null;
	private function set_oncached(v:Function):Function return v;
	
	private function get_onchecking():Function return null;
	private function set_onchecking(v:Function):Function return v;
	
	private function get_ondownloading():Function return null;
	private function set_ondownloading(v:Function):Function return v;
	
	private function get_onerror():Function return null;
	private function set_onerror(v:Function):Function return v;
	
	private function get_onnoupdate():Function return null;
	private function set_onnoupdate(v:Function):Function return v;
	
	private function get_onobsolete():Function return null;
	private function set_onobsolete(v:Function):Function return v;
	
	private function get_onprogress():Function return null;
	private function set_onprogress(v:Function):Function return v;
	
	private function get_onupdateready():Function return null;
	private function set_onupdateready(v:Function):Function return v;
	
	private function get_onstatus():Int return -1;
	
}
