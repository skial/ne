package uhx.ne;

import uhx.mo.Token;
import uhx.lexer.Html;
import uhx.ne.impl.INode;
import uhx.ne.impl.HtmlNode;
import uhx.ne.impl.TextNode;
import uhx.ne.impl.InstructionNode;

/**
 * ...
 * @author Skial Bainn
 */
@:forward abstract Node(INode) from INode to INode {
	public inline function new(v) this = v;
	
	@:from @:noCompletion public static inline function fromToken(v:Token<HtmlKeywords>) return switch (v) {
		case Keyword(Tag(e)): fromHtmlRef( e );
		case Keyword(Instruction(e)): fromInstructionRef( e );
		case Keyword(Text(e)): fromRef( e );
		case _: null;
	}
	@:from @:noCompletion public static inline function fromRef(v:Ref<String>) return new Node( cast new TextNode( v ) );
	@:from @:noCompletion public static inline function fromHtmlRef(v:HtmlRef) return new Node( cast new HtmlNode( v ) );
	@:from @:noCompletion public static inline function fromInstructionRef(v:InstructionRef) return new Node( cast new InstructionNode( v ) );
}