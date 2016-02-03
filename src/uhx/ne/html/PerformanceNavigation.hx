package uhx.ne.html;

class PerformanceNavigation {
	
	public var redirectCount(default, never):Int;
	public var type(default, never):Int;
	
	public function new() {
		
	}
	
	public static inline var TYPE_BACK_FORWARD:Int = 2;
	public static inline var TYPE_NAVIGATE:Int = 0;
	public static inline var TYPE_RELOAD:Int = 1;
	public static inline var TYPE_RESERVED:Int = 255;
	
}
