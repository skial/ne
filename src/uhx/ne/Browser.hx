package uhx.ne;

import uhx.mo.Token;
import uhx.mo.html.Lexer;
import uhx.ne.html.Window;
import uhx.ne.html.Console;
import uhx.ne.html.Location;
import uhx.ne.html.Navigator;
import uhx.ne.html.HTMLDocument;

/**
 * ...
 * @author Skial Bainn
 */
class Browser {

	public static var console:Console = new Console();
	public static var document(default, null):HTMLDocument;
	public static var location:Location = new Location();
	public static var navigator:Navigator = new Navigator();
	public static var supported:Bool = false;
	public static var window:Window = new Window();
	
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
