package uhx.ne.html;

class CSSValue {
	
	public var cssText:String;
	public var cssValueType(default, never):Int;
	
	public function new() {
		
	}
	
	public static inline var CSS_CUSTOM:Int = 3;
	public static inline var CSS_INHERIT:Int = 0;
	public static inline var CSS_PRIMITIVE_VALUE:Int = 1;
	public static inline var CSS_VALUE_LIST:Int = 2;
	
}
