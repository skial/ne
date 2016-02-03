package uhx.ne;

import haxe.extern.EitherType;

class Promise<T> {
	
	public function new (init:T->Void->Dynamic->Void->Void) {
		
	}
	
	public function catchError<TOut>(rejectCallback:EitherType<Dynamic->Void, PromiseCallback<Dynamic, TOut>>):Promise<TOut> {
		return null;
	}
	
	public function then<TOut>(?fulfillCallback:PromiseCallback<T, TOut>, ?rejectCallback:EitherType<Dynamic->Void, PromiseCallback<Dynamic, TOut>>):Promise<TOut> {
		return null;
	}
	
	public static function all(iterable:Array<Dynamic>):Promise<Array<Dynamic>> {
		return null;
	}
	
	public static function race(iterable:Array<Dynamic>):Promise<Dynamic> {
		return null;
	}
	
	public static function reject<T>(?value:Dynamic):Promise<T> {
		return null;
	}
	
	public static function resolve<T>(value:T):Promise<T> {
		return null;
	}
	
	/*public static function resolve<T>(promise:Promise<T>):Promise<T> {
		return null;
	}
	
	public static function resolve<T>(thenable:Thenable<T>):Promise<T> {
		return null;
	}*/
	
}
