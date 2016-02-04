package uhx.ne.html.idb;

import haxe.extern.EitherType;

class Cursor {
	
	public var direction(default, never):CursorDirection;
	public var key(default, never):Dynamic;
	public var primaryKey(default, never):Dynamic;
	public var source(default, never):EitherType<ObjectStore, Index>;
	
	public function new() {
		
	}
	
	public function advance (count:Int):Void {
		
	}
	
	public function continue_ (?key:Dynamic):Void {
		
	}
	
	public function delete_ ():Request {
		return null;
	}
	
	public function update (value:Dynamic):Request {
		return null;
	}
	
}
