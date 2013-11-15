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
		
		//The On array which will contain all the switched on knobs that will play noise
		public var switchOn:Array = new Array();
		
		//The Off array which will contain all the switched off knobs that will not play noise
		public var switchOff:Array = new Array();
		
		public function Sequencer()
		{
			// constructor code
			//This event handler gets the timer and makes it usable in a function
			SetupTimer.start();
			SetupTimer.addEventListener(TimerEvent.TIMER, setupTimeHandler);
			
			function setupTimeHandler():void
			{
				//Track 1 - 16 Steps being added to stage and to the default array of switchOff
				stage.addChild(Tr1St1);
				Tr1St1.x = 128;
				Tr1St1.y = 89;
				Tr1St1.scaleX = 0.8;
				Tr1St1.scaleY = 0.8;
				switchOff.push(Tr1St1);
				
				stage.addChild(Tr1St2);
				Tr1St2.x = 156;
				Tr1St2.y = 89;
				Tr1St2.scaleX = 0.8;
				Tr1St2.scaleY = 0.8;
				switchOff.push(Tr1St2);
				
				stage.addChild(Tr1St3);
				Tr1St3.x = 183;
				Tr1St3.y = 89;
				Tr1St3.scaleX = 0.8;
				Tr1St3.scaleY = 0.8;
				switchOff.push(Tr1St3);
				
				stage.addChild(Tr1St4);
				Tr1St4.x = 210;
				Tr1St4.y = 89;
				Tr1St4.scaleX = 0.8;
				Tr1St4.scaleY = 0.8;
				switchOff.push(Tr1St4);
				
				stage.addChild(Tr1St5);
				Tr1St5.x = 238;
				Tr1St5.y = 89;
				Tr1St5.scaleX = 0.8;
				Tr1St5.scaleY = 0.8;
				switchOff.push(Tr1St5);
				
				stage.addChild(Tr1St6);
				Tr1St6.x = 265;
				Tr1St6.y = 89;
				Tr1St6.scaleX = 0.8;
				Tr1St6.scaleY = 0.8;
				switchOff.push(Tr1St6);
				
				stage.addChild(Tr1St7);
				Tr1St7.x = 292;
				Tr1St7.y = 89;
				Tr1St7.scaleX = 0.8;
				Tr1St7.scaleY = 0.8;
				switchOff.push(Tr1St7);
				
				stage.addChild(Tr1St8);
				Tr1St8.x = 318;
				Tr1St8.y = 89;
				Tr1St8.scaleX = 0.8;
				Tr1St8.scaleY = 0.8;
				switchOff.push(Tr1St8);
				
				stage.addChild(Tr1St9);
				Tr1St9.x = 345;
				Tr1St9.y = 89;
				Tr1St9.scaleX = 0.8;
				Tr1St9.scaleY = 0.8;
				switchOff.push(Tr1St9);
				
				stage.addChild(Tr1St10);
				Tr1St10.x = 372.5;
				Tr1St10.y = 89;
				Tr1St10.scaleX = 0.8;
				Tr1St10.scaleY = 0.8;
				switchOff.push(Tr1St10);
				
				stage.addChild(Tr1St11);
				Tr1St11.x = 400;
				Tr1St11.y = 89;
				Tr1St11.scaleX = 0.8;
				Tr1St11.scaleY = 0.8;
				switchOff.push(Tr1St11);
				
				stage.addChild(Tr1St12);
				Tr1St12.x = 427;
				Tr1St12.y = 89;
				Tr1St12.scaleX = 0.8;
				Tr1St12.scaleY = 0.8;
				switchOff.push(Tr1St12);
				
				stage.addChild(Tr1St13);
				Tr1St13.x = 454;
				Tr1St13.y = 89;
				Tr1St13.scaleX = 0.8;
				Tr1St13.scaleY = 0.8;
				switchOff.push(Tr1St13);
				
				stage.addChild(Tr1St14);
				Tr1St14.x = 480;
				Tr1St14.y = 89;
				Tr1St14.scaleX = 0.8;
				Tr1St14.scaleY = 0.8;
				switchOff.push(Tr1St14);
				
				stage.addChild(Tr1St15);
				Tr1St15.x = 507;
				Tr1St15.y = 89;
				Tr1St15.scaleX = 0.8;
				Tr1St15.scaleY = 0.8;
				switchOff.push(Tr1St15);
				
				stage.addChild(Tr1St16);
				Tr1St16.x = 532;
				Tr1St16.y = 89;
				Tr1St16.scaleX = 0.8;
				Tr1St16.scaleY = 0.8;
				switchOff.push(Tr1St16);
				
				//Track 2 - 16 Steps being added to stage
				stage.addChild(Tr2St1);
				Tr2St1.x = 128;
				Tr2St1.y = 118;
				Tr2St1.scaleX = 0.8;
				Tr2St1.scaleY = 0.8;
				
				stage.addChild(Tr2St2);
				Tr2St2.x = 156;
				Tr2St2.y = 118;
				Tr2St2.scaleX = 0.8;
				Tr2St2.scaleY = 0.8;
				
				stage.addChild(Tr2St3);
				Tr2St3.x = 183;
				Tr2St3.y = 118;
				Tr2St3.scaleX = 0.8;
				Tr2St3.scaleY = 0.8;
				
				stage.addChild(Tr2St4);
				Tr2St4.x = 210;
				Tr2St4.y = 118;
				Tr2St4.scaleX = 0.8;
				Tr2St4.scaleY = 0.8;
				
				stage.addChild(Tr2St5);
				Tr2St5.x = 238;
				Tr2St5.y = 118;
				Tr2St5.scaleX = 0.8;
				Tr2St5.scaleY = 0.8;
				
				stage.addChild(Tr2St6);
				Tr2St6.x = 265;
				Tr2St6.y = 118;
				Tr2St6.scaleX = 0.8;
				Tr2St6.scaleY = 0.8;
				
				stage.addChild(Tr2St7);
				Tr2St7.x = 292;
				Tr2St7.y = 118;
				Tr2St7.scaleX = 0.8;
				Tr2St7.scaleY = 0.8;
				
				stage.addChild(Tr2St8);
				Tr2St8.x = 318;
				Tr2St8.y = 118;
				Tr2St8.scaleX = 0.8;
				Tr2St8.scaleY = 0.8;
				
				stage.addChild(Tr2St9);
				Tr2St9.x = 345;
				Tr2St9.y = 118;
				Tr2St9.scaleX = 0.8;
				Tr2St9.scaleY = 0.8;
				
				stage.addChild(Tr2St10);
				Tr2St10.x = 372.5;
				Tr2St10.y = 118;
				Tr2St10.scaleX = 0.8;
				Tr2St10.scaleY = 0.8;
				
				stage.addChild(Tr2St11);
				Tr2St11.x = 400;
				Tr2St11.y = 118;
				Tr2St11.scaleX = 0.8;
				Tr2St11.scaleY = 0.8;
				
				stage.addChild(Tr2St12);
				Tr2St12.x = 427;
				Tr2St12.y = 118;
				Tr2St12.scaleX = 0.8;
				Tr2St12.scaleY = 0.8;
				
				stage.addChild(Tr2St13);
				Tr2St13.x = 454;
				Tr2St13.y = 118;
				Tr2St13.scaleX = 0.8;
				Tr2St13.scaleY = 0.8;
				
				stage.addChild(Tr2St14);
				Tr2St14.x = 480;
				Tr2St14.y = 118;
				Tr2St14.scaleX = 0.8;
				Tr2St14.scaleY = 0.8;
				
				stage.addChild(Tr2St15);
				Tr2St15.x = 507;
				Tr2St15.y = 118;
				Tr2St15.scaleX = 0.8;
				Tr2St15.scaleY = 0.8;
				
				stage.addChild(Tr2St16);
				Tr2St16.x = 532;
				Tr2St16.y = 118;
				Tr2St16.scaleX = 0.8;
				Tr2St16.scaleY = 0.8;
				
				//Track 3 - 16 Steps being added to stage
				stage.addChild(Tr3St1);
				Tr3St1.x = 128;
				Tr3St1.y = 148;
				Tr3St1.scaleX = 0.8;
				Tr3St1.scaleY = 0.8;
				
				stage.addChild(Tr3St2);
				Tr3St2.x = 156;
				Tr3St2.y = 148;
				Tr3St2.scaleX = 0.8;
				Tr3St2.scaleY = 0.8;
				
				stage.addChild(Tr3St3);
				Tr3St3.x = 183;
				Tr3St3.y = 148;
				Tr3St3.scaleX = 0.8;
				Tr3St3.scaleY = 0.8;
				
				stage.addChild(Tr3St4);
				Tr3St4.x = 210;
				Tr3St4.y = 148;
				Tr3St4.scaleX = 0.8;
				Tr3St4.scaleY = 0.8;
				
				stage.addChild(Tr3St5);
				Tr3St5.x = 238;
				Tr3St5.y = 148;
				Tr3St5.scaleX = 0.8;
				Tr3St5.scaleY = 0.8;
				
				stage.addChild(Tr3St6);
				Tr3St6.x = 265;
				Tr3St6.y = 148;
				Tr3St6.scaleX = 0.8;
				Tr3St6.scaleY = 0.8;
				
				stage.addChild(Tr3St7);
				Tr3St7.x = 292;
				Tr3St7.y = 148;
				Tr3St7.scaleX = 0.8;
				Tr3St7.scaleY = 0.8;
				
				stage.addChild(Tr3St8);
				Tr3St8.x = 318;
				Tr3St8.y = 148;
				Tr3St8.scaleX = 0.8;
				Tr3St8.scaleY = 0.8;
				
				stage.addChild(Tr3St9);
				Tr3St9.x = 345;
				Tr3St9.y = 148;
				Tr3St9.scaleX = 0.8;
				Tr3St9.scaleY = 0.8;
				
				stage.addChild(Tr3St10);
				Tr3St10.x = 372.5;
				Tr3St10.y = 148;
				Tr3St10.scaleX = 0.8;
				Tr3St10.scaleY = 0.8;
				
				stage.addChild(Tr3St11);
				Tr3St11.x = 400;
				Tr3St11.y = 148;
				Tr3St11.scaleX = 0.8;
				Tr3St11.scaleY = 0.8;
				
				stage.addChild(Tr3St12);
				Tr3St12.x = 427;
				Tr3St12.y = 148;
				Tr3St12.scaleX = 0.8;
				Tr3St12.scaleY = 0.8;
				
				stage.addChild(Tr3St13);
				Tr3St13.x = 454;
				Tr3St13.y = 148;
				Tr3St13.scaleX = 0.8;
				Tr3St13.scaleY = 0.8;
				
				stage.addChild(Tr3St14);
				Tr3St14.x = 480;
				Tr3St14.y = 148;
				Tr3St14.scaleX = 0.8;
				Tr3St14.scaleY = 0.8;
				
				stage.addChild(Tr3St15);
				Tr3St15.x = 507;
				Tr3St15.y = 148;
				Tr3St15.scaleX = 0.8;
				Tr3St15.scaleY = 0.8;
				
				stage.addChild(Tr3St16);
				Tr3St16.x = 532;
				Tr3St16.y = 148;
				Tr3St16.scaleX = 0.8;
				Tr3St16.scaleY = 0.8;
				
				//Track 4 - 16 Steps being added to stage
				stage.addChild(Tr4St1);
				Tr4St1.x = 128;
				Tr4St1.y = 175;
				Tr4St1.scaleX = 0.8;
				Tr4St1.scaleY = 0.8;
				
				stage.addChild(Tr4St2);
				Tr4St2.x = 156;
				Tr4St2.y = 175;
				Tr4St2.scaleX = 0.8;
				Tr4St2.scaleY = 0.8;
				
				stage.addChild(Tr4St3);
				Tr4St3.x = 183;
				Tr4St3.y = 175;
				Tr4St3.scaleX = 0.8;
				Tr4St3.scaleY = 0.8;
				
				stage.addChild(Tr4St4);
				Tr4St4.x = 210;
				Tr4St4.y = 175;
				Tr4St4.scaleX = 0.8;
				Tr4St4.scaleY = 0.8;
				
				stage.addChild(Tr4St5);
				Tr4St5.x = 238;
				Tr4St5.y = 175;
				Tr4St5.scaleX = 0.8;
				Tr4St5.scaleY = 0.8;
				
				stage.addChild(Tr4St6);
				Tr4St6.x = 265;
				Tr4St6.y = 175;
				Tr4St6.scaleX = 0.8;
				Tr4St6.scaleY = 0.8;
				
				stage.addChild(Tr4St7);
				Tr4St7.x = 292;
				Tr4St7.y = 175;
				Tr4St7.scaleX = 0.8;
				Tr4St7.scaleY = 0.8;
				
				stage.addChild(Tr4St8);
				Tr4St8.x = 318;
				Tr4St8.y = 175;
				Tr4St8.scaleX = 0.8;
				Tr4St8.scaleY = 0.8;
				
				stage.addChild(Tr4St9);
				Tr4St9.x = 345;
				Tr4St9.y = 175;
				Tr4St9.scaleX = 0.8;
				Tr4St9.scaleY = 0.8;
				
				stage.addChild(Tr4St10);
				Tr4St10.x = 372.5;
				Tr4St10.y = 175;
				Tr4St10.scaleX = 0.8;
				Tr4St10.scaleY = 0.8;
				
				stage.addChild(Tr4St11);
				Tr4St11.x = 400;
				Tr4St11.y = 175;
				Tr4St11.scaleX = 0.8;
				Tr4St11.scaleY = 0.8;
				
				stage.addChild(Tr4St12);
				Tr4St12.x = 427;
				Tr4St12.y = 175;
				Tr4St12.scaleX = 0.8;
				Tr4St12.scaleY = 0.8;
				
				stage.addChild(Tr4St13);
				Tr4St13.x = 454;
				Tr4St13.y = 175;
				Tr4St13.scaleX = 0.8;
				Tr4St13.scaleY = 0.8;
				
				stage.addChild(Tr4St14);
				Tr4St14.x = 480;
				Tr4St14.y = 175;
				Tr4St14.scaleX = 0.8;
				Tr4St14.scaleY = 0.8;
				
				stage.addChild(Tr4St15);
				Tr4St15.x = 507;
				Tr4St15.y = 175;
				Tr4St15.scaleX = 0.8;
				Tr4St15.scaleY = 0.8;
				
				stage.addChild(Tr4St16);
				Tr4St16.x = 532;
				Tr4St16.y = 175;
				Tr4St16.scaleX = 0.8;
				Tr4St16.scaleY = 0.8;
				
				//Track 5 - 16 Steps being added to stage
				stage.addChild(Tr5St1);
				Tr5St1.x = 128;
				Tr5St1.y = 203;
				Tr5St1.scaleX = 0.8;
				Tr5St1.scaleY = 0.8;
				
				stage.addChild(Tr5St2);
				Tr5St2.x = 156;
				Tr5St2.y = 203;
				Tr5St2.scaleX = 0.8;
				Tr5St2.scaleY = 0.8;
				
				stage.addChild(Tr5St3);
				Tr5St3.x = 183;
				Tr5St3.y = 203;
				Tr5St3.scaleX = 0.8;
				Tr5St3.scaleY = 0.8;
				
				stage.addChild(Tr5St4);
				Tr5St4.x = 210;
				Tr5St4.y = 203;
				Tr5St4.scaleX = 0.8;
				Tr5St4.scaleY = 0.8;
				
				stage.addChild(Tr5St5);
				Tr5St5.x = 238;
				Tr5St5.y = 203;
				Tr5St5.scaleX = 0.8;
				Tr5St5.scaleY = 0.8;
				
				stage.addChild(Tr5St6);
				Tr5St6.x = 265;
				Tr5St6.y = 203;
				Tr5St6.scaleX = 0.8;
				Tr5St6.scaleY = 0.8;
				
				stage.addChild(Tr5St7);
				Tr5St7.x = 292;
				Tr5St7.y = 203;
				Tr5St7.scaleX = 0.8;
				Tr5St7.scaleY = 0.8;
				
				stage.addChild(Tr5St8);
				Tr5St8.x = 318;
				Tr5St8.y = 203;
				Tr5St8.scaleX = 0.8;
				Tr5St8.scaleY = 0.8;
				
				stage.addChild(Tr5St9);
				Tr5St9.x = 345;
				Tr5St9.y = 203;
				Tr5St9.scaleX = 0.8;
				Tr5St9.scaleY = 0.8;
				
				stage.addChild(Tr5St10);
				Tr5St10.x = 372.5;
				Tr5St10.y = 203;
				Tr5St10.scaleX = 0.8;
				Tr5St10.scaleY = 0.8;
				
				stage.addChild(Tr5St11);
				Tr5St11.x = 400;
				Tr5St11.y = 203;
				Tr5St11.scaleX = 0.8;
				Tr5St11.scaleY = 0.8;
				
				stage.addChild(Tr5St12);
				Tr5St12.x = 427;
				Tr5St12.y = 203;
				Tr5St12.scaleX = 0.8;
				Tr5St12.scaleY = 0.8;
				
				stage.addChild(Tr5St13);
				Tr5St13.x = 454;
				Tr5St13.y = 203;
				Tr5St13.scaleX = 0.8;
				Tr5St13.scaleY = 0.8;
				
				stage.addChild(Tr5St14);
				Tr5St14.x = 480;
				Tr5St14.y = 203;
				Tr5St14.scaleX = 0.8;
				Tr5St14.scaleY = 0.8;
				
				stage.addChild(Tr5St15);
				Tr5St15.x = 507;
				Tr5St15.y = 203;
				Tr5St15.scaleX = 0.8;
				Tr5St15.scaleY = 0.8;
				
				stage.addChild(Tr5St16);
				Tr5St16.x = 532;
				Tr5St16.y = 203;
				Tr5St16.scaleX = 0.8;
				Tr5St16.scaleY = 0.8;
				
				//Track 6 - 16 Steps being added to stage
				stage.addChild(Tr6St1);
				Tr6St1.x = 128;
				Tr6St1.y = 235;
				Tr6St1.scaleX = 0.8;
				Tr6St1.scaleY = 0.8;
				
				stage.addChild(Tr6St2);
				Tr6St2.x = 156;
				Tr6St2.y = 235;
				Tr6St2.scaleX = 0.8;
				Tr6St2.scaleY = 0.8;
				
				stage.addChild(Tr6St3);
				Tr6St3.x = 183;
				Tr6St3.y = 235;
				Tr6St3.scaleX = 0.8;
				Tr6St3.scaleY = 0.8;
				
				stage.addChild(Tr6St4);
				Tr6St4.x = 210;
				Tr6St4.y = 235;
				Tr6St4.scaleX = 0.8;
				Tr6St4.scaleY = 0.8;
				
				stage.addChild(Tr6St5);
				Tr6St5.x = 238;
				Tr6St5.y = 235;
				Tr6St5.scaleX = 0.8;
				Tr6St5.scaleY = 0.8;
				
				stage.addChild(Tr6St6);
				Tr6St6.x = 265;
				Tr6St6.y = 235;
				Tr6St6.scaleX = 0.8;
				Tr6St6.scaleY = 0.8;
				
				stage.addChild(Tr6St7);
				Tr6St7.x = 292;
				Tr6St7.y = 235;
				Tr6St7.scaleX = 0.8;
				Tr6St7.scaleY = 0.8;
				
				stage.addChild(Tr6St8);
				Tr6St8.x = 318;
				Tr6St8.y = 235;
				Tr6St8.scaleX = 0.8;
				Tr6St8.scaleY = 0.8;
				
				stage.addChild(Tr6St9);
				Tr6St9.x = 345;
				Tr6St9.y = 235;
				Tr6St9.scaleX = 0.8;
				Tr6St9.scaleY = 0.8;
				
				stage.addChild(Tr6St10);
				Tr6St10.x = 372.5;
				Tr6St10.y = 235;
				Tr6St10.scaleX = 0.8;
				Tr6St10.scaleY = 0.8;
				
				stage.addChild(Tr6St11);
				Tr6St11.x = 400;
				Tr6St11.y = 235;
				Tr6St11.scaleX = 0.8;
				Tr6St11.scaleY = 0.8;
				
				stage.addChild(Tr6St12);
				Tr6St12.x = 427;
				Tr6St12.y = 235;
				Tr6St12.scaleX = 0.8;
				Tr6St12.scaleY = 0.8;
				
				stage.addChild(Tr6St13);
				Tr6St13.x = 454;
				Tr6St13.y = 235;
				Tr6St13.scaleX = 0.8;
				Tr6St13.scaleY = 0.8;
				
				stage.addChild(Tr6St14);
				Tr6St14.x = 480;
				Tr6St14.y = 235;
				Tr6St14.scaleX = 0.8;
				Tr6St14.scaleY = 0.8;
				
				stage.addChild(Tr6St15);
				Tr6St15.x = 507;
				Tr6St15.y = 235;
				Tr6St15.scaleX = 0.8;
				Tr6St15.scaleY = 0.8;
				
				stage.addChild(Tr6St16);
				Tr6St16.x = 532;
				Tr6St16.y = 235;
				Tr6St16.scaleX = 0.8;
				Tr6St16.scaleY = 0.8;
			}
			
			//Adding event listeners to Track 1 and running the functions when they are clicked
			Tr1St1.addEventListener(MouseEvent.CLICK, Tr1St1Handler);
			function Tr1St1Handler():void
			{
				
				if(switchOff[Tr1St1] == true)
				{
					switchOff.splice(Tr1St1);
					switchOn.push(Tr1St1);
					Tr1St1.scaleX = -0.8;
					Tr1St1.scaleY = -0.8;
				}
				
				else
				{
					switchOn.splice(Tr1St1);
					switchOff.push(Tr1St1);
				}trace("hi");
			}
			/*Tr1St2.addEventListener(MouseEvent.CLICK, Tr1St2Handler);
			Tr1St3.addEventListener(MouseEvent.CLICK, Tr1St3Handler);
			Tr1St4.addEventListener(MouseEvent.CLICK, Tr1St4Handler);
			Tr1St5.addEventListener(MouseEvent.CLICK, Tr1St5Handler);
			Tr1St6.addEventListener(MouseEvent.CLICK, Tr1St6Handler);
			Tr1St7.addEventListener(MouseEvent.CLICK, Tr1St7Handler);
			Tr1St8.addEventListener(MouseEvent.CLICK, Tr1St8Handler);
			Tr1St9.addEventListener(MouseEvent.CLICK, Tr1St9Handler);
			Tr1St10.addEventListener(MouseEvent.CLICK, Tr1St10Handler);
			Tr1St11.addEventListener(MouseEvent.CLICK, Tr1St11Handler);
			Tr1St12.addEventListener(MouseEvent.CLICK, Tr1St12Handler);
			Tr1St13.addEventListener(MouseEvent.CLICK, Tr1St13Handler);
			Tr1St14.addEventListener(MouseEvent.CLICK, Tr1St14Handler);
			Tr1St15.addEventListener(MouseEvent.CLICK, Tr1St15Handler);
			Tr1St16.addEventListener(MouseEvent.CLICK, Tr1St16Handler);*/
			
			
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
