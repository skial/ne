package uhx.ne.html;

import uhx.ne.html.Document;

/**
 * ...
 * @author Skial Bainn
 */
@:forward abstract HtmlDocument(Document) from Document to Document {

	public inline function new(v) {
		this = v;
	}
	
}