package commands
{
	import events.TextoEvent;
	
	import models.ITextsModel;
	
	import org.robotlegs.mvcs.Command;
	
	public class ActualizaCommand extends Command
	{
		[Inject]
		public var modelo:ITextsModel;
		
		public function ActualizaCommand()
		{
			super();
		}
		
		
		override public function execute():void
		{
			var msg:String = modelo.dameTexto1();
			var evento:TextoEvent = new TextoEvent(TextoEvent.CAMBIADO);
			evento.datos = msg;
			eventDispatcher.dispatchEvent(evento);
		}
		
	}
}