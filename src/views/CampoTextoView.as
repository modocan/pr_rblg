package views
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	public class CampoTextoView extends Sprite
	{
		private var texto:String;
		private var textField:TextField;
		
		public function CampoTextoView(_texto:String)
		{
			this.texto = _texto;
			this.addEventListener(Event.ADDED_TO_STAGE, init);
			
			super();
		}
		
		private function init(e:Event):void
		{
			trace('campo');
			
			this.removeEventListener(Event.ADDED_TO_STAGE, init);
			
			textField = new TextField();
			textField.background = true;
			textField.backgroundColor = 0xefefef;
			textField.selectable = false;
			textField.text = texto;
			textField.autoSize = TextFieldAutoSize.LEFT;
			
			addChild(textField);
		}
		
		
		
		public function updateMessage(message : String) : void
		{
			textField.text = this.texto = message;
			textField.x = (stage.stageWidth - textField.width) / 2;
			textField.y = (stage.stageHeight - textField.height) / 2;
		}
		
		
	}
}