package uhx.ne;

import uhx.ne.Node;
import uhx.mo.Token;
import uhx.mo.html.Lexer;
import uhx.ne.impl.RefList;
import uhx.ne.impl.TokenList;
import uhx.ne.impl.INodeList;

@:forward abstract NodeList(INodeList) from INodeList to INodeList {
	
	public inline function new(v) this = v;
	
	@:arrayAccess @:noCompletion public inline function get(i:Int):Node return this.get( i );
	@:arrayAccess @:noCompletion public inline function set(i:Int, v:Node):Node {
		return this.set( i, v );
	}
	
	@:from public static inline function fromTokens(tokens:Array<Token<HtmlKeywords>>):NodeList {
		return new NodeList( new TokenList( tokens ) );
	}
	
	@:from public static inline function fromNodes(nodes:Array<Node>):NodeList {
		return new NodeList( new RefList( nodes ) );
	}
	
}