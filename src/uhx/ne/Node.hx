package uhx.ne;

import uhx.mo.Token;
import uhx.mo.html.Lexer;
import uhx.ne.impl.INode;
import uhx.ne.impl.HtmlNode;
import uhx.ne.impl.TextNode;
import uhx.ne.impl.InstructionNode;

using haxe.EnumTools;

/**
 * ...
 * @author Skial Bainn
 */
@:notNull @:forward abstract Node(INode<Ref<Any>>) from INode<Ref<Any>> to INode<Ref<Any>> {
	
	public static inline var ELEMENT_NODE:Int = 1;
	public static inline var TEXT_NODE:Int = 3;
	public static inline var PROCESSING_INSTRUCTION_NODE:Int = 7;
	public static inline var COMMENT_NODE:Int = 8;
	public static inline var DOCUMENT_NODE:Int = 9;
	public static inline var DOCUMENT_TYPE_NODE:Int = 10;
	public static inline var DOCUMENT_FRAGMENT_NODE:Int = 11;
	
	public #if !debug inline #end function new(v) this = v;
	
	@:from public static #if !debug inline #end function fromRef(v:Ref<String>) return new Node( cast new TextNode( v ) );
	@:from public static #if !debug inline #end function fromHtmlRef(v:HtmlRef) return new Node( cast new HtmlNode( v ) );
	@:from public static #if !debug inline #end function fromInstructionRef(v:InstructionRef) return new Node( cast new InstructionNode( v ) );
	@:from public static #if !debug inline #end function fromTag(v:HtmlKeywords) return switch v {
		case Tag(e): fromHtmlRef( e );
		case _: null;
	}
	@:from public static #if !debug inline #end function fromInstruction(v:HtmlKeywords) return switch v {
		case Instruction(e): fromInstructionRef( e );
		case _: null;
	}
	@:from public static #if !debug inline #end function fromText(v:HtmlKeywords) return switch v {
		case Text(e): fromRef( e );
		case _: null;
	}
	@:from public static #if !debug inline #end function fromToken(v:Token<HtmlKeywords>):Node return switch (v) {
		case Keyword(Tag(e)): fromHtmlRef( e );
		case Keyword(Instruction(e)): fromInstructionRef( e );
		case Keyword(Text(e)): fromRef( e );
		case _: null;
	}
	@:to public #if !debug inline #end function toToken():Token<HtmlKeywords> {
		return this.toToken();
	}

	@:op(A == B) public static #if !debug inline #end function node_equals(a:Node, b:Node):Bool {
		return a.toToken().equals(b.toToken());
	}

}