package uhx.ne.html;

import uhx.ne.Node;

class Selection {
	
	public var anchorNode(default, never):Node;
	public var anchorOffset(default, never):Int;
	public var focusNode(default, never):Node;
	public var focusOffset(default, never):Int;
	public var isCollapsed(default, never):Bool;
	public var rangeCount(default, never):Int;
	
	public function new() {
		
	}
	
	public function addRange (range:Range):Void {
		
	}
	
	public function collapse (node:Node, offset:Int):Void {
		
	}
	
	public function collapseToEnd ():Void {
		
	}
	
	public function collapseToStart ():Void {
		
	}
	
	public function containsNode (node:Node, allowPartialContainment:Bool):Bool {
		return false;
	}
	
	public function deleteFromDocument ():Void {
		
	}
	
	public function extend (node:Node, offset:Int):Void {
		
	}
	
	public function getRangeAt (index:Int):Range {
		return null;
	}
	
	public function modify (alter:String, direction:String, granularity:String):Void {
		
	}
	
	public function removeAllRanges ():Void {
		
	}
	
	public function removeRange (range:Range):Void {
		
	}
	
	public function selectAllChildren (node:Node):Void {
		
	}
	
}
