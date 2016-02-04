package uhx.ne.html.idb;

import uhx.ne.EventTarget;
import uhx.ne.html.DOMError;
import haxe.Constraints.Function;

@:forward abstract Transaction(EventTarget) from EventTarget to EventTarget {
	
	public var db(get, never):Database;
	public var error(get, never):DOMError;
	public var mode(get, never):TransactionMode;
	public var objectStoreNames(get, never):DOMStringList;
	public var onabort(get, set):Function;
	public var oncomplete(get, set):Function;
	public var onerror(get, set):Function;
	
	public inline function new() {
		
	}
	
	public function abort ():Void {
		
	}
	
	public function objectStore (name:String):ObjectStore {
		return null;
	}
	
	private function get_db():Database return null;
	
	private function get_error():DOMError return null;
	
	private function get_mode():TransactionMode return null;
	
	private function get_objectStoreNames():DOMStringList return null;
	
	private function get_onabort():Function return null;
	private function set_onabort(v:Function):Function return v;
	
	private function get_oncomplete():Function return null;
	private function set_oncomplete(v:Function):Function return v;
	
	private function get_onerror():Function return null;
	private function set_onerror(v:Function):Function return v;
	
}
