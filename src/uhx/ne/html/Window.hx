package uhx.ne.html;

import haxe.extern.Rest;
import haxe.extern.EitherType;
import uhx.ne.html.idb.Factory;
import haxe.Constraints.Function;

class Window {
	
	public var applicationCache(default, never):ApplicationCache;
	public var closed(default, never):Bool;
	public var console(default, never):Console;
	public var content(default, never):Dynamic;
	public var crypto(default, never):Dynamic;
	public var devicePixelRatio(default, never):Float;
	public var document(default, never):HTMLDocument;
	public var frameElement(default, never):Element;
	public var frames(default, never):Window;
	public var fullScreen:Bool;
	public var history(default, never):History;
	public var indexedDB(default, never):Factory;
	public var innerHeight:Int;
	public var innerWidth:Int;
	public var length(default, never):Int;
	public var localStorage(default, never):Storage;
	public var location(default, never):Location;
	public var locationbar(default, never):BarProp;
	public var menubar(default, never):BarProp;
	public var name:String;
	public var navigator(default, never):Navigator;
	public var onabort:Function;
	public var onafterprint:Function;
	public var onbeforeprint:Function;
	public var onblur:Function;
	public var oncanplay:Function;
	public var oncanplaythrough:Function;
	public var onchange:Function;
	public var onclick:Function;
	public var oncontextmenu:Function;
	public var ondblclick:Function;
	public var ondevicelight:Function;
	public var ondevicemotion:Function;
	public var ondeviceorientation:Function;
	public var ondeviceproximity:Function;
	public var ondrag:Function;
	public var ondragend:Function;
	public var ondragenter:Function;
	public var ondragleave:Function;
	public var ondragover:Function;
	public var ondragstart:Function;
	public var ondrop:Function;
	public var ondurationchange:Function;
	public var onemptied:Function;
	public var onended:Function;
	public var onfocus:Function;
	public var ongotpointercapture:Function;
	public var onhashchange:Function;
	public var oninput:Function;
	public var oninvalid:Function;
	public var onkeydown:Function;
	public var onkeypress:Function;
	public var onkeyup:Function;
	public var onlanguagechange:Function;
	public var onload:Function;
	public var onloadeddata:Function;
	public var onloadedmetadata:Function;
	public var onloadstart:Function;
	public var onlostpointercapture:Function;
	public var onmessage:Function;
	public var onmousedown:Function;
	public var onmouseenter:Function;
	public var onmouseleave:Function;
	public var onmousemove:Function;
	public var onmouseout:Function;
	public var onmouseover:Function;
	public var onmouseup:Function;
	public var onoffline:Function;
	public var ononline:Function;
	public var onorientationchange:Function;
	public var onpagehide:Function;
	public var onpageshow:Function;
	public var onpause:Function;
	public var onplay:Function;
	public var onplaying:Function;
	public var onpointercancel:Function;
	public var onpointerdown:Function;
	public var onpointerenter:Function;
	public var onpointerleave:Function;
	public var onpointerlockchange:Function;
	public var onpointerlockerror:Function;
	public var onpointermove:Function;
	public var onpointerout:Function;
	public var onpointerover:Function;
	public var onpointerup:Function;
	public var onpopstate:Function;
	public var onprogress:Function;
	public var onratechange:Function;
	public var onreset:Function;
	public var onresize:Function;
	public var onscroll:Function;
	public var onseeked:Function;
	public var onseeking:Function;
	public var onselect:Function;
	public var onshow:Function;
	public var onstalled:Function;
	public var onsubmit:Function;
	public var onsuspend:Function;
	public var ontimeupdate:Function;
	public var ontouchcancel:Function;
	public var ontouchend:Function;
	public var ontouchmove:Function;
	public var ontouchstart:Function;
	public var onunload:Function;
	public var onuserproximity:Function;
	public var onvolumechange:Function;
	public var onwaiting:Function;
	public var onwheel:Function;
	public var opener:Dynamic;
	public var orientation(default, never):Int;
	public var outerHeight:Int;
	public var outerWidth:Int;
	public var pageXOffset(default, never):Int;
	public var pageYOffset(default, never):Int;
	public var parent(default, never):Window;
	public var performance(default, never):Performance;
	public var personalbar(default, never):BarProp;
	public var screen(default, never):Screen;
	public var screenX:Int;
	public var screenY:Int;
	public var scrollMaxX(default, never):Int;
	public var scrollMaxY(default, never):Int;
	public var scrollX(default, never):Int;
	public var scrollY(default, never):Int;
	public var scrollbars(default, never):BarProp;
	public var self(default, never):Window;
	public var sessionStorage(default, never):Storage;
	public var speechSynthesis(default, never):SpeechSynthesis;
	public var status:String;
	public var statusbar(default, never):BarProp;
	public var toolbar(default, never):BarProp;
	public var top(default, never):Window;
	public var window(default, never):Window;
	
	public function new() {
		
	}
	
	public function alert (message:String):Void {
		
	}
	
	//public function alert ():Void {}
	
	public function atob (atob:String):String {
		return '';
	}
	
	public function blur ():Void {
		
	}
	
	public function btoa (btoa:String):String {
		return '';
	}
	
	public function cancelAnimationFrame (handle:Int):Void {
		
	}
	
	public function captureEvents ():Void {
		
	}
	public function clearInterval (handle:Int = 0):Void {
		
	}
	
	public function clearTimeout (handle:Int = 0):Void {
		
	}
	
	public function close ():Void {
		
	}
	
	public function confirm (message:String = ""):Bool {
		return false;
	}
	
	public function dump (str:String):Void {
		
	}
	
	public function find (str:String = "", caseSensitive:Bool = false, backwards:Bool = false, wrapAround:Bool = false, wholeWord:Bool = false, searchInFrames:Bool = false, showDialog:Bool = false):Bool {
		return false;
	}
	
	public function focus ():Void {
		
	}
	
	public function getComputedStyle (elt:Element, pseudoElt:String = ""):CSSStyleDeclaration {
		return null;
	}
	
	public function getDefaultComputedStyle (elt:Element, pseudoElt:String = ""):CSSStyleDeclaration {
		return null;
	}
	
	public function getSelection ():Selection {
		return null;
	}
	
	public function matchMedia (query:String):MediaQueryList {
		return null;
	}
	
	public function moveBy (x:Int, y:Int):Void {
		
	}
	
	public function moveTo (x:Int, y:Int):Void {
		
	}
	
	public function onbeforeunload (a:Event):String {
		return '';
	}
	
	public function onerror (a:EitherType<Event, String>, b:String, c:Int, d:Int, e:Dynamic):Bool {
		return false;
	}
	
	public function open (url:String = "", target:String = "", features:String = ""):Window {
		return this;
	}
	
	public function postMessage (message:Dynamic, targetOrigin:String, ?transfer:Array<Dynamic>):Void {
		
	}
	
	public function print ():Void {
		
	}
	
	public function prompt (message:String = "", default_:String = ""):String {
		return '';
	}
	
	public function releaseEvents ():Void {
		
	}
	
	public function requestAnimationFrame (callback:Float->Void):Int {
		return -1;
	}
	
	public function resizeBy (x:Int, y:Int):Void {
		
	}
	
	public function resizeTo (x:Int, y:Int):Void {
		
	}
	
	/*public function scroll (?options:ScrollToOptions):Void {
		
	}*/
	
	public function scroll (x:Float, y:Float):Void {
		
	}
	
	/*public function scrollBy (?options:ScrollToOptions):Void {
		
	}*/
	
	public function scrollBy (x:Float, y:Float):Void {
		
	}
	
	public function scrollByLines (numLines:Int, ?options:ScrollOptions):Void {
		
	}
	
	public function scrollByPages (numPages:Int, ?options:ScrollOptions):Void {
		
	}
	
	/*public function scrollTo (?options:ScrollToOptions):Void {
		
	}*/
	
	public function scrollTo (x:Float, y:Float):Void {
		
	}
	
	/*public function setInterval (handler:String, ?timeout:Int, unused:Rest<Dynamic>):Int {
		return -1;
	}*/
	
	public function setInterval (handler:Function, ?timeout:Int, arguments:Array<Dynamic>):Int {
		return -1;
	}
	
	public function setResizable (resizable:Bool):Void {
		
	}
	
	/*public function setTimeout (handler:String, timeout:Int = 0, unused:Rest<Dynamic>):Int {
		return -1;
	}*/
	
	public function setTimeout (handler:Function, timeout:Int = 0, arguments:Array<Dynamic>):Int {
		return -1;
	}
	
	public function sizeToContent ():Void {
		
	}
	
	public function stop ():Void {
		
	}
	
	public function updateCommands (action:String, ?sel:Selection, reason:Int = 0):Void {
		
	}
	
}
