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
	
	public static inline var ELEMENT_NODE:Int = 1;
	public static inline var TEXT_NODE:Int = 3;
	public static inline var PROCESSING_INSTRUCTION_NODE:Int = 7;
	public static inline var COMMENT_NODE:Int = 8;
	public static inline var DOCUMENT_NODE:Int = 9;
	public static inline var DOCUMENT_TYPE_NODE:Int = 10;
	public static inline var DOCUMENT_FRAGMENT_NODE:Int = 11;
	
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