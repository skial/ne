package uhx.ne.html.idb;

class Index {
	
	public var keyPath(default, never):Dynamic;
	public var multiEntry(default, never):Bool;
	public var name(default, never):String;
	public var objectStore(default, never):ObjectStore;
	public var unique(default, never):Bool;
	
	public function new() {
		
	}
	
	public function count (?key:Dynamic):Request {
		return null;
	}
	
	public function get (key:Dynamic):Request {
		return null;
	}
	
	public function getKey (key:Dynamic):Request {
		return null;
	}
	
	public function openCursor (?range:Dynamic, direction:CursorDirection = "next"):Request {
		return null;
	}
	
	public function openKeyCursor (?range:Dynamic, direction:CursorDirection = "next"):Request {
		return null;
	}
	
}
