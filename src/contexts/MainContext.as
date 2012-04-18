package contexts
{
	import commands.ActualizaCommand;
	import commands.CreateViewCommand;
	
	import events.TextoEvent;
	
	import flash.display.DisplayObjectContainer;
	
	import mediators.CampoTextoMediator;
	
	import models.ITextsModel;
	import models.TextsModel;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	
	import views.CampoTextoView;
	
	public class MainContext extends Context
	{
		public function MainContext(contextView:DisplayObjectContainer=null)
		{			
			super(contextView);
		}
		
		override public function startup():void
		{
			mapCommands();
			
			mapModels();
			
			mapViews();
			
			super.startup();
		}
		
		
		private function mapCommands():void
		{
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, CreateViewCommand, ContextEvent, true);
			commandMap.mapEvent(TextoEvent.PULSADO, ActualizaCommand, TextoEvent);
		}
		
		
		private function mapModels():void
		{
			injector.mapSingletonOf(ITextsModel, TextsModel); 
		}
		
		
		private function mapViews():void
		{
			mediatorMap.mapView(CampoTextoView, CampoTextoMediator);
		}
		
	}
}