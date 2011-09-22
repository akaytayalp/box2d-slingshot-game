package Utils 
{
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.media.SoundTransform;
	
	/**
	 *@author ghostmonk - Apr 16, 2011
	 */
	public class SoundUtility 
	{
		private static const ANGRY_BAIRD_SOUNDS:Array = [ 
			new Accountability(), 
			new AskToCome(), 
			new CloakOfDarkness(), 
			new Disgrace(), 
			new FiftyTimes(), 
			new Inconvenience(),
			new KnowTheRules(),
			new UnCanadian()];
		
		private static const FRENCH_SOUNDS:Array = [
			new FRPointOfOrder(),
			new FRQuestion(),
			new FRReglements(),
			new FRVatil()
		]
		
		private static var index:int = 0;
		
		public static var IsEnglish:Boolean = true;
		
		public static function PlayNextAngryComment() : void
		{
			var target:Array = IsEnglish ? ANGRY_BAIRD_SOUNDS : FRENCH_SOUNDS;
			var comment:Sound = target[index];
			comment.play();
			if( ++index == target.length ) index = 0;
		}
		
		private static var loop:SoundChannel;
		
		public static function PlayLoop() : void
		{
			loop = new Tapioca().play( 0, 100000, new SoundTransform( 0.7 ) );
		}
		
		public static function StopLoop() : void
		{
			loop.stop();
		}
	}
}