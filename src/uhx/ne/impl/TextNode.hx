package uhx.ne.impl;

import uhx.mo.Token;
import uhx.ne.NodeList;
import uhx.mo.html.Lexer;
import uhx.ne.html.Element;
import uhx.ne.html.Document;

/**
 * ...
 * @author Skial Bainn
 */
class TextNode implements INode<Ref<String>> {
	
	@:noCompletion public var self:Ref<String>;
	
	@:noCompletion public inline function toToken():Token<HtmlKeywords> {
		return Keyword(Text(self));
	}
	
	public inline function new(v) {
		self = v;
	}
	
	public var baseURI(get, never):String;
	public var childNodes(get, never):NodeList<Token<HtmlKeywords>>;
	public var firstChild(get, never):Node;
	public var lastChild(get, never):Node;
	public var nextSibling(get, never):Node;
	public var nodeName(get, never):String;
	public var nodeType(get, never):Null<Int>;
	public var nodeValue(get, never):Null<String>;
	public var ownerDocument(get, never):Document;
	public var parentNode(get, never):Node;
	public var parentElement(get, never):Element;
	public var previousSibling(get, never):Node;
	public var textContent(get, set):String;
	
	public function appendChild() {
		
	}
	
	public function cloneNode() {
		
	}
	
	public function hasChildNodes():Bool {
		return false;
	}
	
	public function insertBefore() {
		
	}
	
	public function removeChild() {
		
	}
	
	private function get_baseURI():String {
		return '';
	}
	
	private inline function get_childNodes():NodeList<Token<HtmlKeywords>> {
		return [];
	}
	
	private inline function get_firstChild():Node {
		return null;
	}
	
	private inline function get_lastChild():Node {
		return null;
	}
	
	private function get_nextSibling():Node {
		return Node.fromRef(self);
	}
	
	private inline function get_nodeName():String {
		return '#text';
	}
	
	private inline function get_nodeType():Int {
		return Node.TEXT_NODE;
	}
	
	private inline function get_nodeValue():String {
		return self.tokens;
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
	
	private inline function get_textContent():String {
		return self.tokens;
	}
	
	private function set_textContent(v:String):String {
		return v;
	}
	
}