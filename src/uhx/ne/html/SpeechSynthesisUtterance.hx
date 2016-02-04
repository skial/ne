package uhx.ne.html;

import haxe.Constraints.Function;

class SpeechSynthesisUtterance {
	
	public var lang:String;
	public var onboundary:Function;
	public var onend:Function;
	public var onerror:Function;
	public var onmark:Function;
	public var onpause:Function;
	public var onresume:Function;
	public var onstart:Function;
	public var pitch:Float;
	public var rate:Float;
	public var text:String;
	public var voice:SpeechSynthesisVoice;
	public var volume:Float;
	
	public function new (text:String) {
		
	}
	
}
