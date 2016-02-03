package uhx.ne.html;

class Performance {
	
	public var navigation(default, never):PerformanceNavigation;
	public var timing(default, never):PerformanceTiming;
	
	public function new() {
		
	}
	
	public function now():Float {
		return -1.0;
	}
	
}
