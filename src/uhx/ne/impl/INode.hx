package uhx.ne.impl;

import uhx.mo.Token;
import uhx.mo.html.Lexer;
import uhx.ne.html.Element;
import uhx.ne.html.Document;

/**
 * @author Skial Bainn
 */
interface INode<T> {
	
	@:noCompletion public var self:T;
	@:noCompletion public function toToken():Token<HtmlKeywords>;
	
	public var baseURI(get, never):String;
	public var childNodes(get, never):NodeList<Token<HtmlKeywords>>;
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
	public function appendChild():Void;
	public function cloneNode():Void;
	public function hasChildNodes():Bool;
	public function insertBefore():Void;
	public function removeChild():Void;
	private function get_baseURI():String;
	private function get_childNodes():NodeList<Token<HtmlKeywords>>;
	private function get_firstChild():Node;
	private function get_lastChild():Node;
	private function get_nextSibling():Node;
	private function get_nodeName():String;
	private function get_nodeType():Int;
	private function get_nodeValue():String;
	private function get_ownerDocument():Document;
	private function get_parentNode():Node;
	private function get_parentElement():Element;
	private function get_previousSibling():Node;
	private function get_textContent():String;
	private function set_textContent(v:String):String;
}