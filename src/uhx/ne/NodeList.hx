package uhx.ne;

import uhx.mo.Token;
import uhx.lexer.Html;

private typedef Nodes = Array<Node>;
private typedef Tokens = Array<Token<HtmlKeywords>>;

/**
 * ...
 * @author Skial Bainn
 */
@:forward abstract NodeList(Nodes) from Nodes to Nodes {
	
	public var length(get, never):Int;
	
	@:noCompletion public inline function new(v:Nodes) this = v;
	
	@:arrayAccess @:noCompletion public inline function get(i:Int):Node return this[i];
	@:arrayAccess @:noCompletion public inline function set(i:Int, v:Node):Node {
		this[i] = v;
		return v;
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
	
	private function get_length():Int return this.length;
	
	@:from @:noCompletion public static inline function fromTokens(tokens:Tokens) {
		// For some reason its not sinking in why I have to untype this.
		return new NodeList( untyped (tokens:Array<Node>) );
	}
	
}