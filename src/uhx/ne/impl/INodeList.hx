package uhx.ne.impl;

/**
 * @author Skial Bainn
 */
interface INodeList<T> {
	
	public var length(get, never):Int;
	@:noCompletion public var self:T;
	
	public function get(i:Int):Node;
	public function set(i:Int, v:Node):Node;
	
	private function get_length():Int;
	
}