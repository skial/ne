package uhx.ne.html;

import haxe.extern.EitherType;

class MediaKeySession {
	
	public var closed(default, never):Promise<Void>;
	public var error(default, never):MediaKeyError;
	public var expiration(default, never):Float;
	public var keySystem(default, never):String;
	public var sessionId(default, never):String;
	
	public function close ():Promise<Void> {
		
	}
	
	public function generateRequest (initDataType:String, initData:EitherType<ArrayBufferView, ArrayBuffer>):Promise<Void> {
		return null;
	}
	
	public function getUsableKeyIds ():Promise<Array<ArrayBuffer>> {
		return null;
	}
	
	public function load (sessionId:String):Promise<Bool> {
		return null;
	}
	
	public function remove ():Promise<Void> {
		return null;
	}
	
	public function update (response:EitherType<ArrayBufferView, ArrayBuffer>):Promise<Void> {
		return null;
	}
	
}
