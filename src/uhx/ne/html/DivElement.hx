package uhx.ne.html;

/**
 * ...
 * @author Skial Bainn
 */
@:forward abstract DivElement(Element) from Element to Element from Node to Node {
	
	public var className(get, set):String;
	
	public inline function new(v) this = v;
	
	private inline function get_className():String {
		return '';
	}
	
	private inline function set_className(v):String {
		return v;
	}
	
}