package uhx.ne.html;

import uhx.ne.Node;
import uhx.ne.NodeList;

import uhx.mo.Token;
import uhx.lexer.Html;
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
		return cast uhx.select.html.Document.querySelectorAll(this.toToken(), selectors)[0];
	}
	
	@:access(uhx.select.html.Impl) public inline function querySelectorAll(selectors:String):NodeList {
		var results = [];
		
		switch ((this:Token<HtmlKeywords>)) {
			case Keyword(Tag(r)):
				var css = Impl.parse( selectors );
				if (css != null) results = Impl.process( this.toToken(), css, this.toToken() );
				
			case _:
				
		}
		
		return results;
	}
	
}