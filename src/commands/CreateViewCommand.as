package commands
{
	import models.ITextsModel;
	
	import org.robotlegs.mvcs.Command;
	
	import views.CampoTextoView;
	
	public class CreateViewCommand extends Command
	{
		[Inject]
		public var modelo:ITextsModel;
		
		public function CreateViewCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			var vista:CampoTextoView = new CampoTextoView(modelo.textoInicial());
			contextView.addChild(vista);
			
			trace('creado');
		}
		
	}
}