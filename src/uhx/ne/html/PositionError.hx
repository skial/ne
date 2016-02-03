package uhx.ne.html;

class PositionError {
	
	public var code(default, never):Int;
	public var message(default, never):String;
	
	public function new() {
		
	}
	
	public static inline var PERMISSION_DENIED:Int = 1;
	public static inline var POSITION_UNAVAILABLE:Int = 2;
	public static inline var TIMEOUT:Int = 3;
	
}
