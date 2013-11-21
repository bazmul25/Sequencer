package
{
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.net.URLRequest;
	import flash.display.Bitmap;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.display.MovieClip;
	import flash.events.TimerEvent;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import flash.media.Sound;
	import flash.net.URLLoader;
	
	
	public class Sequencer extends MovieClip
	{
		//These variables load the sounds for the whole sequencer
		var music1:Sound = new Sound(new URLRequest("Noises/Guitar1.mp3"));
		var music2:Sound = new Sound(new URLRequest("Noises/Guitar2.mp3"));
		var music3:Sound = new Sound(new URLRequest("Noises/Drum1.mp3"));
		var music4:Sound = new Sound(new URLRequest("Noises/Drum2.mp3"));
		var music5:Sound = new Sound(new URLRequest("Noises/Bass1.mp3"));
		var music6:Sound = new Sound(new URLRequest("Noises/Bass2.mp3"));
		var music7:Sound = new Sound(new URLRequest("Noises/Song.mp3"));
		
		//This timer runs on start up and sets up the entire sequencer
		var Timer1:Timer = new Timer(1000, 1);
		var Timer2:Timer = new Timer(1000, 1);
		var Timer3:Timer = new Timer(1000, 1);
		var Timer4:Timer = new Timer(1000, 1);
		var Timer5:Timer = new Timer(1000, 1);
		var Timer6:Timer = new Timer(1000, 1);
		var Timer7:Timer = new Timer(1000, 1);
		var Timer8:Timer = new Timer(1000, 1);
		var Timer9:Timer = new Timer(1000, 1);
		var Timer10:Timer = new Timer(1000, 1);
		var Timer11:Timer = new Timer(1000, 1);
		var Timer12:Timer = new Timer(1000, 1);
		var Timer13:Timer = new Timer(1000, 1);
		var Timer14:Timer = new Timer(1000, 1);
		var Timer15:Timer = new Timer(1000, 1);
		var Timer16:Timer = new Timer(1000, 1);
		
		var stepLight:LinePlaying = new LinePlaying();
		
		var Track1Array:Array = new Array();
		
		//The On array which will contain all the switched on knobs that will play noise
		public var switchOn:Array = new Array();
		
		//The Off array which will contain all the switched off knobs that will not play noise
		public var switchOff:Array = new Array();
		
		public function Sequencer()
		{
			// constructor code
			.addEventListener(MouseEvent.CLICK, switchHandler);
			function switchHandler():void
			{
				trace("hi");
			}
			
			//Functions that play the guitar noises when the Guitar writing is clicked
			guitar1.addEventListener(MouseEvent.CLICK, guitarHandler1);
			guitar2.addEventListener(MouseEvent.CLICK, guitarHandler2);
			
			function guitarHandler1()
			{
				music1.play();
			}
			
			function guitarHandler2()
			{
				music2.play();
			}
			
			//Functions that play drum noises when the Drum writing is clicked
			drum1.addEventListener(MouseEvent.CLICK, drumHandler1);
			drum2.addEventListener(MouseEvent.CLICK, drumHandler2);
			
			function drumHandler1()
			{
				music3.play();
			}
			
			function drumHandler2()
			{
				music4.play();
			}
			
			//Functions that play the bass noises when the Bass writing is clicked
			bass1.addEventListener(MouseEvent.CLICK, bassHandler1);
			bass2.addEventListener(MouseEvent.CLICK, bassHandler2);
			
			function bassHandler1()
			{
				music5.play();
			}
			
			function bassHandler2()
			{
				music6.play();
			}
			
			//Function that plays the backing track
			song.addEventListener(MouseEvent.CLICK, songHandler1);
			
			function songHandler1()
			{
				music7.play();
			}
			
			//This event handler gets the timer and makes it usable in a function
			Timer1.start();
			
			Timer1.addEventListener(TimerEvent.TIMER, Timer1Handler);
			
			function Timer1Handler():void
			{
				trace("1");
				stage.addChild(stepLight);
				stepLight.x = 135;
				stepLight.y = 266;
				Timer2.start();
				Timer2.addEventListener(TimerEvent.TIMER, Timer2Handler);
			}
			
			function Timer2Handler():void
			{
				trace("2");
				stepLight.x = 161;
				Timer3.start();
				Timer3.addEventListener(TimerEvent.TIMER, Timer3Handler);
			}
			
			function Timer3Handler():void
			{
				trace("3");
				stepLight.x = 188;
				Timer4.start();
				Timer4.addEventListener(TimerEvent.TIMER, Timer4Handler);
			}
			
			function Timer4Handler():void
			{
				trace("4");
				stepLight.x = 216;
				Timer5.start();
				Timer5.addEventListener(TimerEvent.TIMER, Timer5Handler);
			}
			
			function Timer5Handler():void
			{	
				trace("5");
				stepLight.x = 244;
				Timer6.start();
				Timer6.addEventListener(TimerEvent.TIMER, Timer6Handler);
			}
			
			function Timer6Handler():void
			{		
				trace("6");
				stepLight.x = 270;
				Timer7.start();
				Timer7.addEventListener(TimerEvent.TIMER, Timer7Handler);
			}
			
			function Timer7Handler():void
			{
				trace("7");
				stepLight.x = 297;
				Timer8.start();
				Timer8.addEventListener(TimerEvent.TIMER, Timer8Handler);
			}
			
			function Timer8Handler():void
			{
				trace("8");
				stepLight.x = 324;
				Timer9.start();
				Timer9.addEventListener(TimerEvent.TIMER, Timer9Handler);
			}
			function Timer9Handler():void
			{
				trace("9");
				stepLight.x = 351;
				Timer10.start();
				Timer10.addEventListener(TimerEvent.TIMER, Timer10Handler);
			}
			
			function Timer10Handler():void
			{
				trace("10");
				stepLight.x = 378;
				Timer11.start();
				Timer11.addEventListener(TimerEvent.TIMER, Timer11Handler);
			}
			
			function Timer11Handler():void
			{
				trace("11");
				stepLight.x = 406;
				Timer12.start();
				Timer12.addEventListener(TimerEvent.TIMER, Timer12Handler);
			}
			
			function Timer12Handler():void
			{
				trace("12");
				stepLight.x = 433;
				Timer13.start();
				Timer13.addEventListener(TimerEvent.TIMER, Timer13Handler);
			}
			
			function Timer13Handler():void
			{
				trace("13");
				stepLight.x = 459.5;
				Timer14.start();
				Timer14.addEventListener(TimerEvent.TIMER, Timer14Handler);
			}
			
			function Timer14Handler():void
			{
				trace("14");
				stepLight.x = 486.5;
				Timer15.start();
				Timer15.addEventListener(TimerEvent.TIMER, Timer15Handler);
			}
			
			function Timer15Handler():void
			{
				trace("15");
				stepLight.x = 512;
				Timer16.start();
				Timer16.addEventListener(TimerEvent.TIMER, Timer16Handler);
			}
			
			function Timer16Handler():void
			{
				trace("16");
				stepLight.x = 539;
				Timer1.start();
			}
			
		}

	}
	
}
