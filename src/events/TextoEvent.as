package events
{
	import flash.events.Event;
	
	public class TextoEvent extends Event
	{
		public static const PULSADO:String = 'TextoEvent.PULSADO';
		public static const CAMBIADO:String = 'TextoEvent.CAMBIADO';
		
		private var _datos:Object = new Object();
		public function set datos(valor:Object):void { _datos = valor }
		public function get datos():Object { return _datos }
		
		public function TextoEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type);
		}
	}
}