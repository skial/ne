package uhx.ne.html;

class Plugin {
	
	public var description(default,never):String;
	public var filename(default, never):String;
	public var length(default, never):Int;
	public var name(default, never):String;
	public var version(default, never):String;
	
	public function new() {
		
	}
	
	public function item (index:Int):MimeType {
		return null;
	}
	
	public function namedItem (name:String):MimeType {
		return null;
	}
	
}
