package uhx.ne.impl;

import uhx.ne.Node;
import uhx.mo.Token;
import uhx.mo.html.Lexer;

/**
 * ...
 * @author Skial Bainn
 */
class RefList implements INodeList/*<Array<Node>>*/ {
	
	public var length(get, never):Int;
	@:noCompletion public var self:Array<Node>;
	
	public inline function new(v:Array<Node>) self = v;
	
	public inline function get(i:Int):Node {
		trace( i, self[i] );
		return self[i];
	}
	public inline function set(i:Int, v:Node):Node return self[i] = v;
	
	public function indexOf(x:Node, ?fromIndex:Int = 0):Int {
		var result = -1;
		
		/*for (i in fromIndex...this.length) if (this[i].equals( x )) {
			result = i;
			break;
		}*/
		
		return result;
	}
	
	public function lastIndexOf(x:Node, ?fromIndex:Int):Int {
		var result = -1;
		var i = fromIndex == null ? this.length - 1 : fromIndex;
		/*while (i >= 0) if (this[i].equals( x )) {
			result = i;
			break;
		} else {
			i--;
		}*/
		
		return result;
	}

	public inline function iterator():Iterator<Node> {
		return self.iterator();
	}
	
	private inline function get_length():Int return self.length;
	
}