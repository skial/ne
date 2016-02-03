package uhx.ne;

typedef PromiseCallback<T, TOut> = haxe.extern.EitherType<T -> TOut, T -> Promise<TOut>>;
