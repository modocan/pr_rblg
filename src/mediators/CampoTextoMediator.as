package mediators
{
	import events.TextoEvent;
	
	import flash.events.MouseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	import views.CampoTextoView;
	
	public class CampoTextoMediator extends Mediator
	{
		[Inject]
		public var vista:CampoTextoView;
		
		public function CampoTextoMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(vista, MouseEvent.CLICK, onViewClicked);
			eventMap.mapListener(eventDispatcher, TextoEvent.CAMBIADO, onUpdatedGreeting);
		}
		
		
		
		private function onViewClicked(m : MouseEvent) : void
		{
			eventDispatcher.dispatchEvent(new TextoEvent(TextoEvent.PULSADO));
		}
		
		private function onUpdatedGreeting(event : TextoEvent) : void
		{
			var message : String = String(event.datos);
			vista.updateMessage(message);
		}
		
	}
}