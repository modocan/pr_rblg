package
{
	import contexts.MainContext;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import org.robotlegs.core.IContext;
	
	[SWF(width='400', height='300', backgroundColor='#ffffff', frameRate='25')]
	
	public class RobotLegs extends MovieClip
	{
		private var contexto:IContext;
		private var cosa:String;
		
		public function RobotLegs()
		{
			this.stage.align = StageAlign.TOP_LEFT;
			this.stage.scaleMode = StageScaleMode.NO_SCALE;
			
			contexto = new MainContext(this);
			
			// TODO hacer algo nuevo
		}
	}
}