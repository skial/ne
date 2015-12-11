package uhx.ne.macro;

import uhx.mo.Token;
import byte.ByteData;
import uhx.lexer.Html;
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Printer;
import uhx.parser.Html as HP;

/**
 * ...
 * @author Skial Bainn
 */
class Html {
	
	private static var htmlParser:HP = new HP();

	public static macro function toTokens(html:String):ExprOf<Token<HtmlKeywords>> {
		var tokens = htmlParser.toTokens( ByteData.ofString( html ), 'uhx.ne.macro.Html.toTokens()' );
		var results = [for (token in tokens) toExpr( token )];
		
		trace( new Printer().printExpr( results[0] ) );
		
		return macro @:mergeBlock {
			var token = $e { results[0] };
			uhx.ne.Browser.fixLineage( token );
			token;
		}
	}
	
	public static macro function toNode(html:String):ExprOf<uhx.ne.Node> {
		var tokens = htmlParser.toTokens( ByteData.ofString( html ), 'uhx.ne.macro.Html.toTokens()' );
		var results = [for (token in tokens) toExpr( token )];
		
		trace( new Printer().printExpr( results[0] ) );
		
		var unwrapped = switch (results[0]) {
			case macro uhx.mo.Token.Keyword(uhx.lexer.Html.HtmlKeywords.Tag( $ref )):
				trace( 'unwrapping' );
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
	private static function toExpr(token:Token<HtmlKeywords>):Expr {
		var result = null;
		
		switch (token) {
			case Keyword(Tag( { name:n, complete:c, selfClosing:s, categories:cs, attributes:at, tokens:ts, parent:p } )):
				var values = [for (k in at.keys()) macro $v { k } => $v { at.get(k) } ];
				var map = values.length > 0 ? macro [$a{ values }] : macro new haxe.ds.StringMap<String>();
				var tokens = [for (t in ts) toExpr( t )];
				var cats = [for (c in cs) macro $v { c } ];
				
				result = macro uhx.mo.Token.Keyword(uhx.lexer.Html.HtmlKeywords.Tag( 
					new uhx.lexer.Html.HtmlRef($v{ n }, $map, $a{ cats }, $a{tokens}, @:parent null, $v{c}, $v{s}) 
				));
				
			case Keyword(Text( { tokens:t, parent:p } )):
				
			case Keyword(Instruction( { tokens:vs, parent:p, isComment:c } )):
				
			case _:
				
		}
		
		return result;
	}
	#end
	
}