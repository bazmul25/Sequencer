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
		var SetupTimer:Timer = new Timer(1, 1);
		
		var Track1Array:Array = new Array();
		
		//These variables create the switches/knobs to turn on and off the sounds
		//Track 1 - 16 Steps
		var Tr1St1:Knob = new Knob();
		var Tr1St2:Knob = new Knob();
		var Tr1St3:Knob = new Knob();
		var Tr1St4:Knob = new Knob();
		var Tr1St5:Knob = new Knob();
		var Tr1St6:Knob = new Knob();
		var Tr1St7:Knob = new Knob();
		var Tr1St8:Knob = new Knob();
		var Tr1St9:Knob = new Knob();
		var Tr1St10:Knob = new Knob();
		var Tr1St11:Knob = new Knob();
		var Tr1St12:Knob = new Knob();
		var Tr1St13:Knob = new Knob();
		var Tr1St14:Knob = new Knob();
		var Tr1St15:Knob = new Knob();
		var Tr1St16:Knob = new Knob();
		
		//Track 2 - 16 Steps
		var Tr2St1:Knob = new Knob();
		var Tr2St2:Knob = new Knob();
		var Tr2St3:Knob = new Knob();
		var Tr2St4:Knob = new Knob();
		var Tr2St5:Knob = new Knob();
		var Tr2St6:Knob = new Knob();
		var Tr2St7:Knob = new Knob();
		var Tr2St8:Knob = new Knob();
		var Tr2St9:Knob = new Knob();
		var Tr2St10:Knob = new Knob();
		var Tr2St11:Knob = new Knob();
		var Tr2St12:Knob = new Knob();
		var Tr2St13:Knob = new Knob();
		var Tr2St14:Knob = new Knob();
		var Tr2St15:Knob = new Knob();
		var Tr2St16:Knob = new Knob();
		
		//Track 3 - 16 Steps
		var Tr3St1:Knob = new Knob();
		var Tr3St2:Knob = new Knob();
		var Tr3St3:Knob = new Knob();
		var Tr3St4:Knob = new Knob();
		var Tr3St5:Knob = new Knob();
		var Tr3St6:Knob = new Knob();
		var Tr3St7:Knob = new Knob();
		var Tr3St8:Knob = new Knob();
		var Tr3St9:Knob = new Knob();
		var Tr3St10:Knob = new Knob();
		var Tr3St11:Knob = new Knob();
		var Tr3St12:Knob = new Knob();
		var Tr3St13:Knob = new Knob();
		var Tr3St14:Knob = new Knob();
		var Tr3St15:Knob = new Knob();
		var Tr3St16:Knob = new Knob();
		
		//Track 4 - 16 Steps
		var Tr4St1:Knob = new Knob();
		var Tr4St2:Knob = new Knob();
		var Tr4St3:Knob = new Knob();
		var Tr4St4:Knob = new Knob();
		var Tr4St5:Knob = new Knob();
		var Tr4St6:Knob = new Knob();
		var Tr4St7:Knob = new Knob();
		var Tr4St8:Knob = new Knob();
		var Tr4St9:Knob = new Knob();
		var Tr4St10:Knob = new Knob();
		var Tr4St11:Knob = new Knob();
		var Tr4St12:Knob = new Knob();
		var Tr4St13:Knob = new Knob();
		var Tr4St14:Knob = new Knob();
		var Tr4St15:Knob = new Knob();
		var Tr4St16:Knob = new Knob();
		
		//Track 5 - 16 Steps
		var Tr5St1:Knob = new Knob();
		var Tr5St2:Knob = new Knob();
		var Tr5St3:Knob = new Knob();
		var Tr5St4:Knob = new Knob();
		var Tr5St5:Knob = new Knob();
		var Tr5St6:Knob = new Knob();
		var Tr5St7:Knob = new Knob();
		var Tr5St8:Knob = new Knob();
		var Tr5St9:Knob = new Knob();
		var Tr5St10:Knob = new Knob();
		var Tr5St11:Knob = new Knob();
		var Tr5St12:Knob = new Knob();
		var Tr5St13:Knob = new Knob();
		var Tr5St14:Knob = new Knob();
		var Tr5St15:Knob = new Knob();
		var Tr5St16:Knob = new Knob();
		
		//Track 6 - 16 Steps
		var Tr6St1:Knob = new Knob();
		var Tr6St2:Knob = new Knob();
		var Tr6St3:Knob = new Knob();
		var Tr6St4:Knob = new Knob();
		var Tr6St5:Knob = new Knob();
		var Tr6St6:Knob = new Knob();
		var Tr6St7:Knob = new Knob();
		var Tr6St8:Knob = new Knob();
		var Tr6St9:Knob = new Knob();
		var Tr6St10:Knob = new Knob();
		var Tr6St11:Knob = new Knob();
		var Tr6St12:Knob = new Knob();
		var Tr6St13:Knob = new Knob();
		var Tr6St14:Knob = new Knob();
		var Tr6St15:Knob = new Knob();
		var Tr6St16:Knob = new Knob();
		
		
		public function Sequencer()
		{
			// constructor code
			//This event handler gets the timer and makes it usable in a function
			SetupTimer.start();
			SetupTimer.addEventListener(TimerEvent.TIMER, setupTimeHandler);
			
			function setupTimeHandler()
			{
				stage.addChild(Tr1St1);
				Tr1St1.x = 128;
				Tr1St1.y = 89;
				Tr1St1.scaleX = 0.8;
				Tr1St1.scaleY = 0.8;
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
			
		}

	}
	
}
