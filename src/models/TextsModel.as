package models
{
	import org.robotlegs.mvcs.Actor;
	
	public class TextsModel extends Actor implements ITextsModel
	{
		private var texto1:String;
		private var _textoInicial:String = 'Inicial';
		
		
		// SETS
		
		/*public function pintaTexto1(valor:String):void
		{
			texto1 = valor;
		}*/
		
		
		
		// GETS
		
		public function dameTexto1():String
		{
			texto1 = 'Texto_' + Math.round(Math.random() * 10000);
			return texto1;
		}
		
		public function textoInicial():String
		{
			return _textoInicial;
		}
		
		
	}
}