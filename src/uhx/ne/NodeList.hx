package uhx.ne;

import uhx.ne.Node;
import uhx.mo.Token;
import uhx.lexer.Html;
import uhx.ne.impl.RefList;
import uhx.ne.impl.TokenList;
import uhx.ne.impl.INodeList;

private typedef Nodes = Array<Node>;
private typedef Tokens = Array<Token<HtmlKeywords>>;

/**
 * ...
 * @author Skial Bainn
 */
/*@:forward abstract NodeList(Nodes) from Nodes to Nodes {
	
	public var length(get, never):Int;
	
	@:noCompletion public inline function new(v:Nodes) this = v;
	
	@:arrayAccess @:noCompletion public inline function get(i:Int):Node return this[i];
	@:arrayAccess @:noCompletion public inline function set(i:Int, v:Node):Node {
		this[i] = v;
		return v;
	}
	
	public function indexOf(x:Node, ?fromIndex:Int = 0):Int {
		var result = -1;
		
		for (i in fromIndex...this.length) if (this[i].equals( x )) {
			result = i;
			break;
		}
		
		return result;
	}
	
	public function lastIndexOf(x:Node, ?fromIndex:Int):Int {
		var result = -1;
		var i = fromIndex == null ? this.length - 1 : fromIndex;
		while (i >= 0) if (this[i].equals( x )) {
			result = i;
			break;
		} else {
			i--;
		}
		
		return result;
	}
	
	private function get_length():Int return this.length;
	
	@:from @:noCompletion public static inline function fromTokens(tokens:Tokens) {
		return new NodeList( (tokens:Array<Node>) );
	}
	
}*/

@:forward abstract NodeList(INodeList<Array<Dynamic>>) from INodeList<Array<Dynamic>> to INodeList<Array<Dynamic>> {
	
	public inline function new(v) this = v;
	
	@:arrayAccess @:noCompletion public inline function get(i:Int):Node return this.get( i );
	@:arrayAccess @:noCompletion public inline function set(i:Int, v:Node):Node {
		return this.set( i, v );
	}
	
	@:from public static inline function fromTokens(tokens:Array<Token<HtmlKeywords>>) {
		return new NodeList( new TokenList( tokens ) );
	}
	
	@:from public static inline function fromNodes(nodes:Array<Node>) {
		return new NodeList( new RefList( nodes ) );
	}
	
}