package uhx.ne.impl;

/**
 * @author Skial Bainn
 */
interface INodeList {
	
	public var length(get, never):Int;
	//@:noCompletion public var self:T;
	
	public function get(i:Int):Node;
	public function set(i:Int, v:Node):Node;
	
	private function get_length():Int;

	public function indexOf(x:Node, ?fromIndex:Int = 0):Int;
	public function lastIndexOf(x:Node, ?fromIndex:Int):Int;
	public function iterator():Iterator<Node>;
	
}