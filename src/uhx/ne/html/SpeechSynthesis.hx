package uhx.ne.html;

class SpeechSynthesis {
	
	public var paused(default, never):Bool;
	public var pending(default, never):Bool;
	public var speaking(default, never):Bool;
	
	public function new() {
		
	}
	
	public function cancel():Void {
		
	}
	
	public function getVoices():Array<SpeechSynthesisVoice> {
		return [];
	}
	
	public function pause():Void {
		
	}
	
	public function resume():Void {
		
	}
	
	public function speak(utterance:SpeechSynthesisUtterance):Void {
		
	}
	
}
