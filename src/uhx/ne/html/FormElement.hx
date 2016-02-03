package uhx.ne.html;

@:forward abstract FormElement(Element) from Element to Element {
	
	public var acceptCharset(get, set):String;
	public var action(get, set):String;
	public var autocomplete(get, set):String;
	public var elements(get, never):HTMLCollection;
	public var encoding(get, set):String;
	public var enctype(get, set):String;
	public var length(get, never):Int;
	public var method(get, set):String;
	public var name(get, set):String;
	public var noValidate(get, set):Bool;
	public var target(get, set):String;
	
	public inline function new() {
		
	}
	
	public function checkValidity():Bool {
		return false;
	}
	
	public function reset ():Void {
		
	}
	
	public function submit ():Void {
		
	}
	
	private function get_acceptCharset():String return '';
	private function set_acceptCharset(v:String):String return v;
	
	private function get_action():String return '';
	private function set_action(v:String):String return v;
	
	private function get_autocomplete():String return '';
	private function set_autocomplete(v:String):String return v;
	
	private function get_elements():HTMLCollection return null;
	
	private function get_encoding():String return '';
	private function set_encoding(v:String):String return v;
	
	private function get_enctype():String return '';
	private function set_enctype(v:String):String return v;
	
	private function get_length():Int return -1;
	
	private function get_method():String return '';
	private function set_method(v:String):String return v;
	
	private function get_name():String return '';
	private function set_name(v:String):String return v;
	
	private function get_noValidate():Bool return false;
	private function set_noValidate(v:Bool):Bool return v;
	
	private function get_target():String return '';
	private function set_target(v:String):String return v;
	
}
