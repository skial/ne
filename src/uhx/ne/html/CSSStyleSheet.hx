package uhx.ne.html;

class CSSStyleSheet extends StyleSheet {
	
	public var cssRules(default, never):CSSRuleList;
	public var ownerRule(default, never):CSSRule;
	
	public function new() {
		super();
	}
	
	public function deleteRule (index:Int):Void {
		
	}
	
	public function insertRule (rule:String, index:Int):Int {
		return -1;
	}
	
}
