package uhx.ne.impl;

import uhx.mo.Token;
import uhx.lexer.Html;
import uhx.ne.NodeList;

/**
 * ...
 * @author Skial Bainn
 */
class HtmlNode {
	
	private var self:HtmlRef;
	
	public inline function new(v) {
		self = v;
	}
	
	public var baseURI(get, never):String;
	public var childNodes(get, never):NodeList;
	public var firstChild(get, never):Node;
	public var lastChild(get, never):Node;
	public var nextSibling(get, never):Node;
	public var nodeName(get, never):String;
	public var nodeType(get, never):Int;
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
	
	public function hasChildNodes() {
		
	}
	
	public function insertBefore() {
		
	}
	
	public function removeChild() {
		
	}
	
	private function get_baseURI():String {
		return '';
	}
	
	private function get_childNodes():NodeList {
		return self.tokens;
	}
	
	private function get_firstChild():Node {
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
	
	private function get_nodeType():Int {
		return 1;
	}
	
	private function get_nodeValue():String {
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
		return [for (t in self.tokens) if (Node.fromToken(t).nodeType != 7) Node.fromToken(t).textContent].join('');
	}
	
	private function set_textContent(v:String):String {
		return v;
	}
	
}