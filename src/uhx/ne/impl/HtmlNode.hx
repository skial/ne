package uhx.ne.impl;

import uhx.mo.Token;
import uhx.lexer.Html;
import uhx.ne.NodeList;
import uhx.ne.html.Element;
import uhx.ne.html.Document;

/**
 * ...
 * @author Skial Bainn
 */
class HtmlNode implements INode<HtmlRef> {
	
	@:noCompletion public var self:HtmlRef;
	
	@:noCompletion public inline function toToken():Token<HtmlKeywords> {
		return Keyword(Tag(self));
	}
	
	public inline function new(v) {
		self = v;
	}
	
	public var baseURI(get, never):String;
	public var childNodes(get, never):NodeList;
	public var firstChild(get, never):Node;
	public var lastChild(get, never):Node;
	public var nextSibling(get, never):Node;
	public var nodeName(get, never):Null<String>;
	public var nodeType(get, never):Null<Int>;
	public var nodeValue(get, never):String;
	public var ownerDocument(get, never):Document;
	public var parentNode(get, never):Node;
	public var parentElement(get, never):Element;
	public var previousSibling(get, never):Node;
	public var textContent(get, set):String;
	
	public function appendChild() {
		
	}
	
	public function cloneNode() {
		
	}
	
	public inline function hasChildNodes():Bool {
		return self.tokens.length > 0;
	}
	
	public function insertBefore() {
		
	}
	
	public function removeChild() {
		
	}
	
	private function get_baseURI():String {
		return '';
	}
	
	private inline function get_childNodes():NodeList {
		return NodeList.fromTokens( self.tokens );
	}
	
	private inline function get_firstChild():Node {
		return self.tokens[0];
	}
	
	private function get_lastChild():Node {
		return self.tokens[ self.tokens.length - 1 ];
	}
	
	private function get_nextSibling():Node {
		return self;
	}
	
	private function get_nodeName():String {
		return self.name;
	}
	
	private inline function get_nodeType():Int {
		return Node.ELEMENT_NODE;
	}
	
	private inline function get_nodeValue():String {
		return null;
	}
	
	private function get_ownerDocument():Document {
		return cast self;
	}
	
	private function get_parentNode():Node {
		return self.parent();
	}
	
	private function get_parentElement():Element {
		return cast self;
	}
	
	private function get_previousSibling():Node {
		return self;
	}
	
	private function get_textContent():String {
		return [for (t in self.tokens) {
			if (t != null && (t:Node).nodeType != Node.PROCESSING_INSTRUCTION_NODE) (t:Node).textContent;
			
		}].join('');
	}
	
	private function set_textContent(v:String):String {
		return v;
	}
	
}