package uhx.ne.html;

import haxe.extern.EitherType;

class MediaKeys {
	
	public var keySystem(default, never):String;
	
	public function createSession (sessionType:SessionType = "temporary"):MediaKeySession {
		return null;
	}
	
	public function setServerCertificate (serverCertificate:EitherType<ArrayBufferView, ArrayBuffer>):Promise<Void> {
		return null;
	}
	
}
