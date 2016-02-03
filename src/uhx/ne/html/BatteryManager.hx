package uhx.ne.html;

import haxe.Constraints.Function;

class BatteryManager {
	
	public var charging(default, never):Bool;
	public var chargingTime(default, never):Float;
	public var dischargingTime(default, never):Float;
	public var level(default, never):Float;
	public var onchargingchange:Function;
	public var onchargingtimechange:Function;
	public var ondischargingtimechange:Function;
	public var onlevelchange:Function;
	
	public function new() {
		
	}
	
}
