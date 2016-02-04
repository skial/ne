package uhx.ne.html;

class CSSRule {
	
	public var cssText:String;
	public var parentRule(default, never):CSSRule;
	public var parentStyleSheet(default, never):CSSStyleSheet;
	public var type(default, never):Int;
	
	public function new() {
		
	}
	
	public static inline var CHARSET_RULE:Int = 2;
	public static inline var FONT_FACE_RULE:Int = 5;
	public static inline var IMPORT_RULE:Int = 3;
	public static inline var MEDIA_RULE:Int = 4;
	public static inline var PAGE_RULE:Int = 6;
	public static inline var STYLE_RULE:Int = 1;
	public static inline var UNKNOWN_RULE:Int = 0;
	
}
