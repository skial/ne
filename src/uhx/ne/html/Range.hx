package uhx.ne.html;

import uhx.ne.Node;

class Range {
	
	public var collapsed(default, never):Bool;
	public var commonAncestorContainer(default, never):Node;
	public var endContainer(default, never):Node;
	public var endOffset(default, never):Int;
	public var startContainer(default, never):Node;
	public var startOffset(default, never):Int;
	
	public function new() {
		
	}
	
	public function cloneContents ():DocumentFragment {
		return null;
	}
	
	public function cloneRange ():Range {
		return null;
	}
	
	public function collapse (toStart:Bool = false):Void {
		
	}
	
	public function compareBoundaryPoints (how:Int, sourceRange:Range):Int {
		return -1;
	}
	
	public function comparePoint (node:Node, offset:Int):Int {
		return -1;
	}
	
	public function createContextualFragment (fragment:String):DocumentFragment {
		return null;
	}
	
	public function deleteContents ():Void {
		
	}
	
	public function detach ():Void {
		
	}
	
	public function extractContents ():DocumentFragment {
		return null;
	}
	
	public function getBoundingClientRect ():DOMRect {
		return null;
	}
	
	public function getClientRects ():DOMRectList {
		return null;
	}
	
	public function insertNode (node:Node):Void {
		
	}
	
	public function intersectsNode (node:Node):Bool {
		return false;
	}
	
	public function isPointInRange (node:Node, offset:Int):Bool {
		return false;
	}
	
	public function selectNode (refNode:Node):Void {
		
	}
	
	public function selectNodeContents (refNode:Node):Void {
		
	}
	
	public function setEnd (refNode:Node, offset:Int):Void {
		
	}
	
	public function setEndAfter (refNode:Node):Void {
		
	}
	
	public function setEndBefore (refNode:Node):Void {
		
	}
	
	public function setStart (refNode:Node, offset:Int):Void {
		
	}
	
	public function setStartAfter (refNode:Node):Void {
		
	}
	
	public function setStartBefore (refNode:Node):Void {
		
	}
	
	public function surroundContents (newParent:Node):Void {
		
	}
	
	public static inline var END_TO_END:Int = 2;
	public static inline var END_TO_START:Int = 3;
	public static inline var START_TO_END:Int = 1;
	public static inline var START_TO_START:Int = 0;
	
}
