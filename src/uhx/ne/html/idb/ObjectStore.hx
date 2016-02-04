package uhx.ne.html.idb;

class ObjectStore {
	
	public var autoIncrement(default, never):Bool;
	public var indexNames(default, never):DOMStringList;
	public var keyPath(default, never):Dynamic;
	public var name(default, never):String;
	public var transaction(default, never):Transaction;
	
	public function new() {
		
	}
	
	public function add (value:Dynamic, ?key:Dynamic):Request {
		return null;
	}
	
	public function clear ():Request {
		return null;
	}
	
	public function count (?key:Dynamic):Request {
		return null;
	}
	
	//createIndex (name:String, keyPath:Array<String>, ?optionalParameters:IndexParameters):Index
	public function createIndex (name:String, keyPath:String, ?optionalParameters:IndexParameters):Index {
		return null;
	}
	
	public function deleteIndex (indexName:String):Void {
		
	}
	
	public function delete_ (key:Dynamic):Request {
		return null;
	}
	
	public function get (key:Dynamic):Request {
		return null;
	}
	
	public function index (name:String):Index {
		return null;
	}
	
	public function openCursor (?range:Dynamic, direction:CursorDirection = "next"):Request {
		return null;
	}
	
	public function put (value:Dynamic, ?key:Dynamic):Request {
		return null;
	}
	
}
