package uhx.ne;

import uhx.mo.Token;
import uhx.lexer.Html;
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
		document = uhx.ne.macro.Helper.toNode( "<html><head></head><body></body></html>" );
	}
	
	private static var parent:Token<HtmlKeywords> = null;
	
	/**
	 * Setup the parent field for each token, which was created at compile time.
	 */
	@:noCompletion public static function fixLineage(token:Token<HtmlKeywords>):Void {
		switch (token) {
			case Keyword(Tag(ref)):
				ref.parent = function() return parent;
				
				var prevParent = parent;
				parent = token;
				
				for (token in ref.tokens) fixLineage( token );
				
				parent = prevParent;
				prevParent = null;
				
			case _:
				
		}
	}
	
}