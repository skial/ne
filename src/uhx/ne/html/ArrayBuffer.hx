package uhx.ne.html;

class ArrayBuffer {
	
	public function new (length:Int) {
		
	}
	
	public var byteLength(default, never):Int;
	
	public function slice (begin:Int, ?end:Int):ArrayBuffer {
		return this;
	}
	
	public static function isView (value:Dynamic):Bool {
		return false;
	}
	
}
