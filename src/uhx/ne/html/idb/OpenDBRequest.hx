package uhx.ne.html.idb;

import haxe.Constraints.Function;

@:forward abstract OpenDBRequest(Request) from Request to Request {
	
	public var onblocked(get, set):Function;
	public var onupgradeneeded(get, set):Function;
	
	public inline function new(v) {
		this = v;
	}
	
	private function get_onblocked():Function return null;
	private function set_onblocked(v:Function):Function return v;
	
	private function get_onupgradeneeded():Function return null;
	private function set_onupgradeneeded(v:Function):Function return v;
	
}
