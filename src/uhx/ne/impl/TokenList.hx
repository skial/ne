package uhx.ne.impl;

import uhx.ne.Node;
import uhx.mo.Token;
import uhx.mo.html.Lexer;

typedef Tokens = Array<Token<HtmlKeywords>>;

/**
 * ...
 * @author Skial Bainn
 */
class TokenList implements INodeList/*<Tokens>*/ {
	
	public var length(get, never):Int;
	@:noCompletion public var self:Tokens;
	
	public inline function new(v:Tokens) {
		self = v;
	}
	
	public inline function get(i:Int):Node {
		return self[i] != null ? Node.fromToken( self[i] ) : null;
	}
	
	public inline function set(i:Int, v:Node):Node {
		self[i] = v.toToken();
		return self[i];
	}
	
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
		var i:Iterator<Token<HtmlKeywords>> = self.iterator();
		return {
			hasNext:i.hasNext,
			next:function() return Node.fromToken(i.next())
		}
	}
	
	private function get_length():Int return self.length;

}