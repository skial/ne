package uhx.ne.html.idb;

import uhx.ne.EventTarget;
import haxe.extern.EitherType;
import haxe.Constraints.Function;

@:forward abstract Request(EventTarget) from EventTarget to EventTarget {
	
	public var error(get, never):DOMError;
	public var onerror(get, set):Function;
	public var onsuccess(get, set):Function;
	public var readyState(get, never):RequestReadyState;
	public var result(get, never):Dynamic;
	public var source(get, never):EitherType<ObjectStore, EitherType<Index, Cursor>>;
	public var transaction(get, never):Transaction;
	
	public inline function new(v) {
		this = v;
	}
	
	public function get_error():DOMError return null;
	
	public function get_onerror():Function return null;
	public function set_onerror(v:Function):Function return v;
	
	public function get_onsuccess():Function return null;
	public function set_onsuccess(v:Function):Function return v;
	
	public function get_readyState():RequestReadyState return null;
	
	public function get_result():Dynamic return null;
	
	public function get_source():EitherType<ObjectStore, EitherType<Index, Cursor>> return null;
	
	public function get_transaction():Transaction return null;
	
}
