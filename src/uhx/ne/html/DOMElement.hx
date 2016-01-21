package uhx.ne.html;

import uhx.ne.Node;
import uhx.mo.Token;
import haxe.ds.Vector;
import uhx.lexer.Html;
import haxe.ds.StringMap;
import uhx.select.html.Impl;
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
	
	public function getAttribute(name:String):String {
		return switch (this.toToken()) {
			case Keyword(Tag( { attributes:attrs } )):
				attrs.get( name );
				
			case _:
				null;
				
		}
	}
	
	public function getAttributeNode(name:String):Attr {
		return switch (this.toToken()) {
			case Keyword(Tag( { attributes:attrs } )) if (attrs.exists( name )):
				var v = new Vector(2);
				v.set( 0, name );
				v.set( 1, attrs.get( name ) );
				v;
				
			case _:
				null;
				
		}
	}
	
	public function hasAttribute(name:String):Bool {
		return switch (this.toToken()) {
			case Keyword(Tag( { attributes:attrs } )):
				attrs.exists( name );
				
			case _:
				false;
				
		}
	}
	
	public function hasAttributes():Bool {
		return switch (this.toToken()) {
			case Keyword(Tag( { attributes:attrs } )):
				var count = 0;
				for (k in attrs.keys()) count++;
				count > 0;
				
			case _:
				false;
				
		}
	}
	
	public function removeAttribute(name:String):Void {
		switch (this.toToken()) {
			case Keyword(Tag( { attributes:attrs } )):
				attrs.remove( name );
				
			case _:
				
		}
	}
	
	public function removeAttributeNode(oldAttr:Attr):Attr {
		if (hasAttribute( oldAttr.name )) {
			removeAttribute( oldAttr.name );
			
		}
		
		return oldAttr;
	}
	
	public function setAttribute(name:String, value:String):Void {
		switch (this.toToken()) {
			case Keyword(Tag( { attributes:attrs } )):
				attrs.set( name, value );
				
			case _:
				
		}
	}
	
	public function setAttributeNode(newAttr:Attr):Attr {
		setAttribute( newAttr.name, newAttr.value );
		
		return newAttr;
	}
	
	public inline function querySelector(selectors:String):Element {
		return querySelectorAll(selectors)[0];
	}
	
	@:access(uhx.select.html.Impl) public inline function querySelectorAll(selectors:String):NodeList {
		var results = [];
		
		switch ((this:Token<HtmlKeywords>)) {
			case Keyword(Tag(r)):
				var css = Impl.parse( selectors );
				if (css != null) results = new Impl().process( this.toToken(), css, this.toToken() );
				
			case _:
				
		}
		
		return results;
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