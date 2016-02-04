package uhx.ne.html.idb;

import haxe.Constraints.Function;

class Database {
	
	public var name(default, never):String;
	public var objectStoreNames(default, never):DOMStringList;
	public var onabort:Function;
	public var onerror:Function;
	public var onversionchange:Function;
	public var version(default, never):Int;
	
	public function new() {
		
	}
	
	public function close ():Void {
		
	}
	
	public function createMutableFile (name:String, ?type:String):Request {
		return null;
	}
	
	public function createObjectStore (name:String, ?optionalParameters:ObjectStoreParameters):ObjectStore {
		return null;
	}
	
	public function deleteObjectStore (name:String):Void {
		
	}
	
	public function transaction (storeNames:Array<String>, mode:TransactionMode = "readonly"):Transaction {
		return null;
	}
	/*public function transaction (storeName:String, mode:TransactionMode = "readonly"):Transaction {
		return null;
	}*/
	
}
