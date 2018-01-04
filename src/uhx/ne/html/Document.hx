package uhx.ne.html;

import uhx.ne.Node;
import uhx.ne.NodeList;

import uhx.mo.Token;
import uhx.mo.html.Lexer;
import uhx.select.html.Impl;

/**
 * ...
 * @author Skial Bainn
 */
@:forward abstract Document(Node) from Node to Node {

	public inline function new(v) {
		this = v;
	}
	
	public inline function querySelector(selectors:String):Element {
		return querySelectorAll(selectors)[0];
	}
	
	@:access(uhx.select.html.Impl) public inline function querySelectorAll(selectors:String):NodeList<Token<HtmlKeywords>> {
		var results:NodeList<Token<HtmlKeywords>> = [];
		
		switch ((this:Token<HtmlKeywords>)) {
			case Keyword(Tag(r)):
				var css = Impl.parse( selectors );
				if (css != null) results = NodeList.fromTokens( new Impl().process( this.toToken(), css, this.toToken() ) );
				
			case _:
				
		}
		
		return results;
	}
	
}