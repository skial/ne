package uhx.ne.macro;

import uhx.mo.Token;
import byte.ByteData;
import haxe.macro.Expr;
import uhx.mo.html.Lexer;
import haxe.macro.Context;
import haxe.macro.Printer;
import uhx.mo.html.Parser as HP;

/**
 * ...
 * @author Skial Bainn
 */
class Helper {
	
	private static var htmlParser:HP = new HP();

	public static macro function toTokens(html:String):ExprOf<Token<HtmlKeywords>> {
		var tokens = htmlParser.toTokens( ByteData.ofString( html ), 'uhx.ne.macro.Html.toTokens()' );
		var results = [for (token in tokens) toExpr( token )];
		
		return macro @:mergeBlock {
			var token = $e { results[0] };
			uhx.ne.Browser.fixLineage( token );
			token;
		}
	}
	
	public static macro function toNode(html:String):ExprOf<uhx.ne.Node> {
		var tokens = htmlParser.toTokens( ByteData.ofString( html ), 'uhx.ne.macro.Html.toTokens()' );
		var results = [for (token in tokens) toExpr( token )];
		var unwrapped = switch (results[0]) {
			case macro uhx.mo.Token.Keyword(uhx.mo.html.Lexer.HtmlKeywords.Tag( $ref )):
				macro new uhx.ne.Node( cast new uhx.ne.impl.HtmlNode( $ref ) );
				
			case _:
				null;
				
		}
		
		return macro @:mergeBlock {
			var token = $e { unwrapped };
			uhx.ne.Browser.fixLineage( token.toToken() );
			token;
		}
	}
	
	#if macro
	/**
	 * Takes a single `Token<HtmlKeywords>` and turns it into an
	 * expression, removing any runtime parsing.
	 */
	private static function toExpr(token:Token<HtmlKeywords>):Expr {
		var result = null;
		
		switch (token) {
			case Keyword(Tag( { name:n, complete:c, selfClosing:s, categories:cs, attributes:at, tokens:ts, parent:p } )):
				var values = [for (k in at.keys()) macro $v { k } => $v { at.get(k) } ];
				var map = values.length > 0 ? macro [$a{ values }] : macro new haxe.ds.StringMap<String>();
				var tokens = [for (t in ts) toExpr( t )];
				var cats = [for (c in cs) macro $v { c } ];
				
				result = macro uhx.mo.Token.Keyword(uhx.mo.html.Lexer.HtmlKeywords.Tag( 
					new uhx.mo.html.Lexer.HtmlRef($v{ n }, $map, $a{ cats }, $a{tokens}, @:parent null, $v{c}, $v{s}) 
				));
				
			case Keyword(Text( { tokens:t, parent:p } )):
				
			case Keyword(Instruction( { tokens:vs, parent:p, isComment:c } )):
				
			case _:
				
		}
		
		return result;
	}
	#end
	
}