package uhx.ne.html;

class Gamepad {
	
	public var axes(default, never):Array<Float>;
	public var buttons(default, never):Array<GamepadButton>;
	public var connected(default, never):Bool;
	public var id(default, never):String;
	public var index(default, never):Int;
	public var mapping(default, never):GamepadMappingType;
	public var timestamp(default, never):Float;
	
	public function new() {
		
	}
	
}
