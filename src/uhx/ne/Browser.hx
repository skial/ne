package uhx.ne;

import uhx.ne.html.HtmlDocument;

/**
 * ...
 * @author Skial Bainn
 */
class Browser {

	public static var console:Dynamic;
	public static var document(default, null):HtmlDocument;
	public static var location:Dynamic;
	public static var navigator:Dynamic;
	public static var supported:Dynamic;
	public static var window:Dynamic;
	
	public static function alert(value:Dynamic):Void {
		
	}
	
	public static function createXMLHttpRequest() {
		
	}
	
	public static function getLocalStorage() {
		
	}
	
	public static function getSessionStorage() {
		
	}
	
	// Internal
	
	@:noCompletion public static function __init__() {
		//document = uhx.ne.macro.Html.toTokens( "<html><head></head><body></body></html>" );
	}
	
}