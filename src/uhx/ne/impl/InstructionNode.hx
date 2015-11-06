package uhx.ne.impl;

import uhx.lexer.Html;
import uhx.ne.NodeList;

using StringTools;

/**
 * ...
 * @author Skial Bainn
 */
class InstructionNode implements INode {
	
	private var self:InstructionRef;
	
	public inline function new(v) {
		self = v;
	}
	
	public var baseURI(get, never):String;
	public var childNodes(get, never):NodeList;
	public var firstChild(get, never):Node;
	public var lastChild(get, never):Node;
	public var nextSibling(get, never):Node;
	@:isVar public var nodeName(get, null):Null<String>;
	@:isVar public var nodeType(get, null):Null<Int>;
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
	
	private function get_childNodes():NodeList {
		return [];
	}
	
	private function get_firstChild():Node {
		return null;
	}
	
	private function get_lastChild():Node {
		return null;
	}
	
	private function get_nextSibling():Node {
		return self;
	}
	
	private function get_nodeName():String {
		if (nodeName == null) nodeName = '#comment';
		
		return nodeName;
	}
	
	private function get_nodeType():Int {
		if (nodeType == null) {
			nodeType = Node.COMMENT_NODE;
			
		}
		
		return nodeType;
	}
	
	private function get_nodeValue():String {
		return if (self.isComment) {
			self.tokens.slice(1, self.tokens.length - 1).join('');
		} else {
			'?' + self.tokens.join('') + '?';
		}
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
		return nodeValue;
	}
	
	private function set_textContent(v:String):String {
		return v;
	}
	
}