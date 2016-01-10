package uhx.ne.html;

import haxe.ds.Vector;

/**
 * ...
 * @author Skial Bainn
 */
abstract Attr(Vector<String>) from Vector<String> to Vector<String> {
	
	public var name(get, never):String;
	public var value(get, never):String;

	public inline function new(v) this = v;
	
	private inline function get_name():String {
		return this.get(0);
	}
	
	private inline function get_value():String {
		return this.get(1);
	}
	
}