package uhx.ne.html;

import uhx.ne.Node;
import uhx.mo.Token;
import haxe.ds.StringMap;
import uhx.lexer.Html.HtmlKeywords;

/**
 * ...
 * @author Skial Bainn
 */
@:forward abstract DOMElement(Node) from Node to Node {

	public var attributes(get, never):NamedNodeMap;
	
	public inline function new(v) {
		this = v;
	}
	
	private inline function get_attributes():NamedNodeMap {
		return switch (this.toToken()) {
			case Keyword(Tag( { attributes:attrs } )):
				new NamedNodeMap( attrs );
				
			case _:
				new NamedNodeMap( new StringMap() );
				
		}
	}
	
}