package uhx.ne.html;

import haxe.extern.EitherType;

class Navigator {
	
	public var appCodeName(default, never):String;
	public var appName(default, never):String;
	public var appVersion(default, never):String;
	public var battery(default, never):BatteryManager;
	public var buildID(default, never):String;
	public var cookieEnabled(default, never):Bool;
	public var doNotTrack(default, never):String;
	public var geolocation(default, never):Geolocation;
	public var language(default, never):String;
	public var languages(default, never):Array<String>;
	public var maxTouchPoints(default, never):Int;
	public var mimeTypes(default, never):MimeTypeArray;
	public var onLine(default, never):Bool;
	public var oscpu(default, never):String;
	public var platform(default, never):String;
	public var plugins(default, never):PluginArray;
	public var product(default, never):String;
	public var productSub(default, never):String;
	public var userAgent(default, never):String;
	public var vendor(default, never):String;
	public var vendorSub(default, never):String;
	
	public function new() {
		
	}
	
	public function getGamepads ():Array<Gamepad> {
		return [];
	}
	
	public function javaEnabled ():Bool {
		return false;
	}
	
	public function registerContentHandler (mimeType:String, url:String, title:String):Void {
		
	}
	
	public function registerProtocolHandler (scheme:String, url:String, title:String):Void {
		
	}
	
	public function requestMediaKeySystemAccess (keySystem:String, ?supportedConfigurations:Array<MediaKeySystemOptions>):Promise<MediaKeySystemAccess> {
		return null;
	}
	
	public function sendBeacon (url:String, ?data:EitherType<ArrayBufferView, EitherType<Blob, EitherType<String, FormData>>>):Bool {
		return false;
	}
	
	public function taintEnabled ():Bool {
		return false;
	}
	//public function vibrate (pattern:Array<Int>):Bool
	public function vibrate (duration:Int):Bool {
		return false;
	}
	
}
