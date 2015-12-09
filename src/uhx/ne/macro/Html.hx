package uhx.ne.macro;

import byte.ByteData;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Printer;
import haxe.Serializer;
import uhx.parser.Html as HP;

/**
 * ...
 * @author Skial Bainn
 */
class Html {
	
	private static var htmlParser:HP = new HP();

	public static macro function toTokens(html:String):ExprOf<Node> {
		var tokens = htmlParser.toTokens( ByteData.ofString( html ), 'uhx.ne.macro.Html.toTokens()' );
		
		//return macro $v{ tokens[0] };
		//return Context.makeExpr( tokens[0], Context.currentPos() );
		var str = Serializer.run( tokens[0] );
		trace( str );
		var expr = Context.eval( macro haxe.Unserializer.run( $v{str} ) );
		trace( new Printer().printExpr( expr ) );
		//return Context.parse( '' + tokens[0] + ';', Context.currentPos() );
		return null;
	}
	
}