package
{

	import flash.display.Loader;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;
	import flash.text.TextField;
	
	public class TankLuis extends Sprite
	{
		private var loaderStaticBg6:Loader = new Loader();
		
		/** First Row Start **/
		
		// tanks
		private var loaderRegTank00: Loader = new Loader();
		private var loaderRegTank01: Loader = new Loader();
		private var loaderRegTank02: Loader = new Loader();
		private var loaderRegTank03: Loader = new Loader();
		private var loaderRegTank04: Loader = new Loader();
		private var loaderRegTank05: Loader = new Loader();
		
		// pipes
		private var loaderRegPipe00: Loader = new Loader();
		private var loaderRegPipe01: Loader = new Loader();
		private var loaderRegPipe01_1: Loader = new Loader();
		private var loaderRegPipe02: Loader = new Loader();
		private var loaderRegPipe03: Loader = new Loader();
		private var loaderRegPipe04: Loader = new Loader();
		
		// pipe outs
		private var loaderOutPipeClr00: Loader = new Loader();
		
		/** First Row End **/
		
		/** Second Row Start **/
		
		// tanks
		private var loaderRegTank10: Loader = new Loader();
		private var loaderRegTank11: Loader = new Loader();
		private var loaderRegTank12: Loader = new Loader();
		private var loaderRegTank13: Loader = new Loader();
		private var loaderRegTank14: Loader = new Loader();
		private var loaderRegTank15: Loader = new Loader();
		
		// pipes
		private var loaderRegPipe10: Loader = new Loader();
		private var loaderRegPipe11: Loader = new Loader();
		private var loaderRegPipe12: Loader = new Loader();
		private var loaderRegPipe13: Loader = new Loader();
		private var loaderRegPipe14: Loader = new Loader();
		private var loaderRegPipe12_1: Loader = new Loader();
		private var loaderRegPipe13_1: Loader = new Loader();
		private var loaderRegPipe14_1: Loader = new Loader();
		
		// pipe out 
		private var loaderOutPipeClr10: Loader = new Loader();
		
		/** Second Row End **/
		
		/** Third Row Start **/
		
		// tanks
		private var loaderRegTank20: Loader = new Loader();
		private var loaderRegTank21: Loader = new Loader();
		private var loaderRegTank22: Loader = new Loader();
		private var loaderRegTank23: Loader = new Loader();
		private var loaderRegTank24: Loader = new Loader();
		private var loaderRegTank25: Loader = new Loader();
		
		// pipes
		private var loaderRegPipe20: Loader = new Loader();
		private var loaderRegPipe20_1: Loader = new Loader();
		private var loaderRegPipe20_2: Loader = new Loader();
		private var loaderRegPipe21: Loader = new Loader();
		private var loaderRegPipe22: Loader = new Loader();
		private var loaderRegPipe23: Loader = new Loader();
		private var loaderRegPipe24: Loader = new Loader();
		
		// pipe out
		private var loaderOutPipeClr20: Loader = new Loader();
		
		/** Third Row End **/
		
		/** Fourth Row Start **/
		
		// tanks
		private var loaderRegTank30: Loader = new Loader();
		private var loaderRegTank31: Loader = new Loader();
		private var loaderRegTank32: Loader = new Loader();
		private var loaderRegTank33: Loader = new Loader();
		private var loaderRegTank34: Loader = new Loader();
		private var loaderRegTank35: Loader = new Loader();
		
		// pipes
		private var loaderRegPipe30: Loader = new Loader();
		private var loaderRegPipe31: Loader = new Loader();
		private var loaderRegPipe32: Loader = new Loader();
		private var loaderRegPipe33: Loader = new Loader();
		private var loaderRegPipe34: Loader = new Loader();
		
		// pipe out
		private var loaderOutPipeClr30: Loader = new Loader();
		
		/** Fourth Row End **/
		
		/** Fifht Row Start **/
		
		//tanks
		private var loaderRegTank40: Loader = new Loader();
		private var loaderRegTank41: Loader = new Loader();
		private var loaderRegTank42: Loader = new Loader();
		private var loaderRegTank43: Loader = new Loader();
		private var loaderRegTank44: Loader = new Loader();
		private var loaderRegTank45: Loader = new Loader();
		
		// pipes
		private var loaderRegPipe40: Loader = new Loader();
		private var loaderRegPipe41: Loader = new Loader();
		private var loaderRegPipe42: Loader = new Loader();
		private var loaderRegPipe43: Loader = new Loader();
		private var loaderRegPipe44: Loader = new Loader();
		
		// pipe out
		private var loaderOutPipeClr40: Loader = new Loader();
		
		/** Fifht Row End **/
		
		/** Sixth Row Start **/
		
		//tanks
		private var loaderRegTank50: Loader = new Loader();
		private var loaderRegTank51: Loader = new Loader();
		private var loaderRegTank52: Loader = new Loader();
		private var loaderRegTank53: Loader = new Loader();
		private var loaderRegTank54: Loader = new Loader();
		private var loaderRegTank55: Loader = new Loader();
		
		// pipes
		private var loaderRegPipe50: Loader = new Loader();
		private var loaderRegPipe51: Loader = new Loader();
		private var loaderRegPipe52: Loader = new Loader();
		private var loaderRegPipe53: Loader = new Loader();
		private var loaderRegPipe54: Loader = new Loader();
		
		// pipe out
		private var loaderOutPipeClr50: Loader = new Loader();
		
		public function TankLuis()
		{
			init();
		}
		
		public function init():void 
		{ 
			
			var rectangleShape:Shape = new Shape();
			rectangleShape.graphics.lineStyle(1);
			rectangleShape.graphics.drawRect(10, 10, 180, 55); // drawRect(x,y,width, height);
			addChild(rectangleShape);
			
			var textTitle:TextField = new TextField();
			textTitle.text = "Minimize Costs: ";
			textTitle.x = 15;
			textTitle.y = 15;
			textTitle.width = 180;
			
			var textInnerWall:TextField = new TextField();
			textInnerWall.text = "Check Inner Walls of a Tank: $80";
			textInnerWall.x = 15;
			textInnerWall.y = 30;
			textInnerWall.width = 180;
			
			var textPipeWater:TextField = new TextField();
			textPipeWater.text = "Test Pipe Water: $10";
			textPipeWater.x = 15;
			textPipeWater.y = 45;
			textPipeWater.width = 180;
			
			addChild(textTitle);
			addChild(textInnerWall);
			addChild(textPipeWater);
			
			var rectangleShape2:Shape = new Shape();
			rectangleShape2.graphics.lineStyle(1);
			rectangleShape2.graphics.drawRect(10, 70, 180, 20); // drawRect(x,y,width, height);
			addChild(rectangleShape2);
			
			var textLeftClick:TextField = new TextField();
			textLeftClick.text = "SHIFT-Left Click to mark tanks";
			textLeftClick.x = 15;
			textLeftClick.y = 73;
			textLeftClick.width = 180;
			
			addChild(textLeftClick);
			
			var rectangleShape3:Shape = new Shape();
			rectangleShape3.graphics.lineStyle(1);
			rectangleShape3.graphics.drawRect(200, 10, 125, 40); // drawRect(x,y,width, height);
			addChild(rectangleShape3);
			
			var textSoFarSpentLabel:TextField = new TextField();
			textSoFarSpentLabel.text = "So far, you have spent:";
			textSoFarSpentLabel.x = 205;
			textSoFarSpentLabel.y = 15;
			textSoFarSpentLabel.width = 125;
			
			var textSoFarSpentValue:TextField = new TextField();
			textSoFarSpentValue.text = "$0";
			textSoFarSpentValue.x = 205;
			textSoFarSpentValue.y = 30;
			textSoFarSpentValue.width = 125;
			
			addChild(textSoFarSpentLabel);
			addChild(textSoFarSpentValue);
			
			var rectangleShape4:Shape = new Shape();
			rectangleShape4.graphics.lineStyle(1);
			rectangleShape4.graphics.drawRect(400, 10, 60, 40); // drawRect(x,y,width, height);
			addChild(rectangleShape4);
			
			var textProblemLabel:TextField = new TextField();
			textProblemLabel.text = "Problem:";
			textProblemLabel.x = 405;
			textProblemLabel.y = 15;
			textProblemLabel.width = 60;
			
			var textProblemValue:TextField = new TextField();
			textProblemValue.text = "#1";
			textProblemValue.x = 405;
			textProblemValue.y = 30;
			textProblemValue.width = 60;
			
			addChild(textProblemLabel);
			addChild(textProblemValue);
			
//			var textCleanStremLabel:TextField = new TextField();
//			textCleanStremLabel.text = "Clean\nStream";
//			textCleanStremLabel.x = 10;
//			textCleanStremLabel.y = 100;
//			textProblemValue.width = 60;
			
//			addChild(textCleanStremLabel);
			
			
			loaderStaticBg6.x = 10;
			loaderStaticBg6.y = 75;
			
			loaderStaticBg6.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderStaticBg6.width = 500;
				loaderStaticBg6.height = 300;
			});
			
			loaderStaticBg6.load(new URLRequest("../res/static_background_6.png"));
			addChild(loaderStaticBg6);
			
			/** row one start **/
			
			loaderRegTank00.x = 65;
			loaderRegTank00.y = 163;
			
			loaderRegTank00.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank00.width = 20;
				loaderRegTank00.height = 20;
			});
			
			loaderRegTank01.x = 115;
			loaderRegTank01.y = 163;
			
			loaderRegTank01.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank01.width = 20;
				loaderRegTank01.height = 20;
			});
			
			loaderRegTank02.x = 165;
			loaderRegTank02.y = 163;
			
			loaderRegTank02.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank02.width = 20;
				loaderRegTank02.height = 20;
			});
			
			loaderRegTank03.x = 215;
			loaderRegTank03.y = 163;
			
			loaderRegTank03.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank03.width = 20;
				loaderRegTank03.height = 20;
			});
			
			loaderRegTank04.x = 265;
			loaderRegTank04.y = 163;
			
			loaderRegTank04.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank04.width = 20;
				loaderRegTank04.height = 20;
			});
			
			loaderRegTank05.x = 315;
			loaderRegTank05.y = 163;
			
			loaderRegTank05.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank05.width = 20;
				loaderRegTank05.height = 20;
			});
			
			loaderRegPipe00.x = 86;
			loaderRegPipe00.y = 168;
			
			loaderRegPipe00.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe00.width = 48;
				loaderRegPipe00.height = 10;
				loaderRegPipe00.rotation = 45;
			});
			
			loaderRegPipe01.x = 134;
			loaderRegPipe01.y = 168;
			
			loaderRegPipe01.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe01.width = 32;
				loaderRegPipe01.height = 10;
			});
			
			loaderRegPipe01_1.x = 136;
			loaderRegPipe01_1.y = 168;
			
			loaderRegPipe01_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe01_1.width = 48;
				loaderRegPipe01_1.height = 10;
				loaderRegPipe01_1.rotation = 45;
			});
			
			loaderRegPipe02.x = 184;
			loaderRegPipe02.y = 168;
			
			loaderRegPipe02.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe02.width = 32;
				loaderRegPipe02.height = 10;
			});
			
			loaderRegPipe03.x = 234;
			loaderRegPipe03.y = 168;
			
			loaderRegPipe03.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe03.width = 32;
				loaderRegPipe03.height = 10;
			});
			
			loaderRegPipe04.x = 284;
			loaderRegPipe04.y = 166;
			
			loaderRegPipe04.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe04.width = 50;
				loaderRegPipe04.height = 10;
				loaderRegPipe04.rotation = 45;
			});
			
			loaderOutPipeClr00.x = 334;
			loaderOutPipeClr00.y = 168;
			
			loaderOutPipeClr00.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderOutPipeClr00.width = 32;
				loaderOutPipeClr00.height = 9;
			});
				
			loaderRegTank00.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank01.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank02.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank03.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank04.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank05.load(new URLRequest("../res/reg_tank.png"));
			
			loaderRegPipe00.load(new URLRequest("../res/pipe_reg.png"));
			loaderRegPipe01.load(new URLRequest("../res/pipe_reg.png"));
			loaderRegPipe01_1.load(new URLRequest("../res/pipe_reg.png"));
			loaderRegPipe02.load(new URLRequest("../res/pipe_reg.png"));
			loaderRegPipe03.load(new URLRequest("../res/pipe_reg.png"));
			loaderRegPipe04.load(new URLRequest("../res/pipe_reg.png"));
			
			loaderOutPipeClr00.load(new URLRequest("../res/out_pipe_clr.png"));
			
			addChildAt(loaderRegTank00, 1);
			addChildAt(loaderRegTank01, 1);
			addChildAt(loaderRegTank02, 1);
			addChildAt(loaderRegTank03, 1);
			addChildAt(loaderRegTank04, 1);
			addChildAt(loaderRegTank05, 1);
			
			addChildAt(loaderRegPipe00, 0);
			addChildAt(loaderRegPipe01, 0);
			addChildAt(loaderRegPipe01_1, 0);
			addChildAt(loaderRegPipe02, 0);
			addChildAt(loaderRegPipe03, 0);
			addChildAt(loaderRegPipe04, 0);
			
			addChildAt(loaderOutPipeClr00, 0);
			
			/** row one end **/
			
			/** row two start **/
			loaderRegTank10.x = 65;
			loaderRegTank10.y = 197;
			
			loaderRegTank10.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank10.width = 20;
				loaderRegTank10.height = 20;
			});
			
			loaderRegTank11.x = 115;
			loaderRegTank11.y = 197;
			
			loaderRegTank11.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank11.width = 20;
				loaderRegTank11.height = 20;
			});
			
			loaderRegTank12.x = 165;
			loaderRegTank12.y = 197;
			
			loaderRegTank12.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank12.width = 20;
				loaderRegTank12.height = 20;
			});
			
			loaderRegTank13.x = 215;
			loaderRegTank13.y = 197;
			
			loaderRegTank13.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank13.width = 20;
				loaderRegTank13.height = 20;
			});
			
			loaderRegTank14.x = 265;
			loaderRegTank14.y = 197;
			
			loaderRegTank14.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank14.width = 20;
				loaderRegTank14.height = 20;
			});
			
			loaderRegTank15.x = 315;
			loaderRegTank15.y = 197;
			
			loaderRegTank15.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank15.width = 20;
				loaderRegTank15.height = 20;
			});
			
			loaderRegPipe10.x = 78;
			loaderRegPipe10.y = 204;
			
			loaderRegPipe12.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe10.width = 50;
				loaderRegPipe10.height = 10;
				loaderRegPipe10.rotation = -45;
			});
			
			loaderRegPipe12.x = 184;
			loaderRegPipe12.y = 202;
			
			loaderRegPipe12.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe12.width = 32;
				loaderRegPipe12.height = 10;
			});
			
			loaderRegPipe12_1.x = 180;
			loaderRegPipe12_1.y = 204;
			
			loaderRegPipe12_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe12_1.width = 50;
				loaderRegPipe12_1.height = 10;
				loaderRegPipe12_1.rotation = -45;
			});
			
			loaderRegPipe13_1.x = 228;
			loaderRegPipe13_1.y = 204;
			
			loaderRegPipe13_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe13_1.width = 50;
				loaderRegPipe13_1.height = 10;
				loaderRegPipe13_1.rotation = -45;
			});
			
			loaderRegPipe14.x = 284;
			loaderRegPipe14.y = 202;
			
			loaderRegPipe14.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe14.width = 32;
				loaderRegPipe14.height = 10;
			});
			
			loaderRegPipe14_1.x = 278;
			loaderRegPipe14_1.y = 204;
			
			loaderRegPipe14_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe14_1.width = 50;
				loaderRegPipe14_1.height = 10;
				loaderRegPipe14_1.rotation = -45;
			});
			
			loaderOutPipeClr10.x = 335
			loaderOutPipeClr10.y = 204;
			
			loaderOutPipeClr10.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderOutPipeClr10.width = 32;
				loaderOutPipeClr10.height = 8;
			});
			
			loaderRegTank10.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank11.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank12.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank13.load(new URLRequest("../res/clr_tank.png"));
			loaderRegTank14.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank15.load(new URLRequest("../res/reg_tank.png"));
			
			loaderRegPipe10.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe12.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe14.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe12_1.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe13_1.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe14_1.load(new URLRequest("../res/pipe_reg.png"))
			
			loaderOutPipeClr10.load(new URLRequest("../res/out_pipe_clr.png"))
				
			addChildAt(loaderRegTank10, 2);
			addChildAt(loaderRegTank11, 2);
			addChildAt(loaderRegTank12, 2);
			addChildAt(loaderRegTank13, 2);
			addChildAt(loaderRegTank14, 2);
			addChildAt(loaderRegTank15, 2);
			
			addChildAt(loaderRegPipe10, 1);
			addChildAt(loaderRegPipe12, 1);
			addChildAt(loaderRegPipe14, 1);
			addChildAt(loaderRegPipe12_1, 1);
			addChildAt(loaderRegPipe13_1, 1);
			addChildAt(loaderRegPipe14_1, 1);
			
			addChildAt(loaderOutPipeClr10, 1);
			
			/** row two end **/
			
			/** row three start **/
			
			loaderRegTank20.x = 65;
			loaderRegTank20.y = 230;
			
			loaderRegTank20.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank20.width = 20;
				loaderRegTank20.height = 20;
			});
			
			loaderRegTank21.x = 115;
			loaderRegTank21.y = 230;
			
			loaderRegTank21.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank21.width = 20;
				loaderRegTank21.height = 20;
			});
			
			loaderRegTank22.x = 165;
			loaderRegTank22.y = 230;
			
			loaderRegTank22.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank22.width = 20;
				loaderRegTank22.height = 20;
			});
			
			loaderRegTank23.x = 215;
			loaderRegTank23.y = 230;
			
			loaderRegTank23.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank23.width = 20;
				loaderRegTank23.height = 20;
			});
			loaderRegTank24.x = 265;
			loaderRegTank24.y = 230;
			
			loaderRegTank24.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank24.width = 20;
				loaderRegTank24.height = 20;
			});
			
			loaderRegTank25.x = 315;
			loaderRegTank25.y = 230;
			
			loaderRegTank25.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank25.width = 20;
				loaderRegTank25.height = 20;
			});
			
			loaderRegPipe20.x = 85;
			loaderRegPipe20.y = 237;
			
			loaderRegPipe20.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe20.width = 30;
				loaderRegPipe20.height = 10;
			});
			
			loaderRegPipe22.x = 185;
			loaderRegPipe22.y = 237;
			
			loaderRegPipe22.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe22.width = 30;
				loaderRegPipe22.height = 10;
			});
			
			loaderRegPipe24.x = 285;
			loaderRegPipe24.y = 237;
			
			loaderRegPipe24.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe24.width = 30;
				loaderRegPipe24.height = 10;
			});
			
			
			loaderOutPipeClr20.x = 335
			loaderOutPipeClr20.y = 237;
			
			loaderOutPipeClr20.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderOutPipeClr20.width = 32;
				loaderOutPipeClr20.height = 8;
			});
			
			loaderRegTank20.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank21.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank22.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank23.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank24.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank25.load(new URLRequest("../res/reg_tank.png"));
			
			loaderRegPipe20.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe22.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe24.load(new URLRequest("../res/pipe_reg.png"))
				
			loaderOutPipeClr20.load(new URLRequest("../res/out_pipe_clr.png"))
			
			addChild(loaderRegTank20);
			addChild(loaderRegTank21);
			addChild(loaderRegTank22);
			addChild(loaderRegTank23);
			addChild(loaderRegTank24);
			addChild(loaderRegTank25);
			
			addChild(loaderRegPipe20);
			addChild(loaderRegPipe22);
			addChild(loaderRegPipe24);
			
			addChild(loaderOutPipeClr20);
			
			/** row three end **/
			
			/** row four start **/
			
			loaderRegTank30.x = 65;
			loaderRegTank30.y = 264;
			
			loaderRegTank30.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank30.width = 20;
				loaderRegTank30.height = 20;
			});
			
			loaderRegTank31.x = 115;
			loaderRegTank31.y = 264;
			
			loaderRegTank31.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank31.width = 20;
				loaderRegTank31.height = 20;
			});
			
			loaderRegTank32.x = 165;
			loaderRegTank32.y = 264;
			
			loaderRegTank32.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank32.width = 20;
				loaderRegTank32.height = 20;
			});
			
			loaderRegTank33.x = 215;
			loaderRegTank33.y = 264;
			
			loaderRegTank33.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank33.width = 20;
				loaderRegTank33.height = 20;
			});
			
			loaderRegTank34.x = 265;
			loaderRegTank34.y = 264;
			
			loaderRegTank34.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank34.width = 20;
				loaderRegTank34.height = 20;
			});
			
			loaderRegTank35.x = 315;
			loaderRegTank35.y = 264;
			
			loaderRegTank35.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank35.width = 20;
				loaderRegTank35.height = 20;
			});
			
			loaderRegPipe30.x = 85;
			loaderRegPipe30.y = 271;
			
			loaderRegPipe30.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe30.width = 30;
				loaderRegPipe30.height = 10;
			});
			
			loaderRegPipe31.x = 135;
			loaderRegPipe31.y = 271;
			
			loaderRegPipe31.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe31.width = 30;
				loaderRegPipe31.height = 10;
			});
			
			loaderRegPipe32.x = 185;
			loaderRegPipe32.y = 271;
			
			loaderRegPipe32.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe32.width = 30;
				loaderRegPipe32.height = 10;
			});
			
			loaderRegPipe33.x = 235;
			loaderRegPipe33.y = 271;
			
			loaderRegPipe33.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe33.width = 30;
				loaderRegPipe33.height = 10;
			});
			
			loaderOutPipeClr30.x = 335
			loaderOutPipeClr30.y = 271;
			
			loaderOutPipeClr30.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderOutPipeClr30.width = 32;
				loaderOutPipeClr30.height = 9;
			});
			
			loaderRegTank30.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank31.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank32.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank33.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank34.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank35.load(new URLRequest("../res/reg_tank.png"));
			
			loaderRegPipe30.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe31.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe32.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe33.load(new URLRequest("../res/pipe_reg.png"))
				
			loaderOutPipeClr30.load(new URLRequest("../res/out_pipe_clr.png"))
			addChild(loaderRegTank30);
			addChild(loaderRegTank31);
			addChild(loaderRegTank32);
			addChild(loaderRegTank33);
			addChild(loaderRegTank34);
			addChild(loaderRegTank35);
			
			addChild(loaderRegPipe30);
			addChild(loaderRegPipe31);
			addChild(loaderRegPipe32);
			addChild(loaderRegPipe33);
			
			addChild(loaderOutPipeClr30);
			
			/** row four end **/
			
			/** row five start **/
			
			loaderRegTank40.x = 65;
			loaderRegTank40.y = 297;
			
			loaderRegTank40.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank40.width = 20;
				loaderRegTank40.height = 20;
			});
			
			loaderRegTank41.x = 115;
			loaderRegTank41.y = 297;
			
			loaderRegTank41.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank41.width = 20;
				loaderRegTank41.height = 20;
			});
			
			loaderRegTank42.x = 165;
			loaderRegTank42.y = 297;
			
			loaderRegTank42.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank42.width = 20;
				loaderRegTank42.height = 20;
			});
			
			loaderRegTank43.x = 215;
			loaderRegTank43.y = 297;
			
			loaderRegTank43.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank43.width = 20;
				loaderRegTank43.height = 20;
			});
			
			loaderRegTank44.x = 265;
			loaderRegTank44.y = 297;
			
			loaderRegTank44.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank44.width = 20;
				loaderRegTank44.height = 20;
			});
			
			loaderRegTank45.x = 315;
			loaderRegTank45.y = 297;
			
			loaderRegTank45.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank45.width = 20;
				loaderRegTank45.height = 20;
			});
			
			loaderRegPipe40.x = 85;
			loaderRegPipe40.y = 305;
			
			loaderRegPipe40.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe40.width = 30;
				loaderRegPipe40.height = 10;
			});
			
			loaderRegPipe41.x = 135;
			loaderRegPipe41.y = 305;
			
			loaderRegPipe41.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe41.width = 30;
				loaderRegPipe41.height = 10;
			});
			
//			loaderRegPipe42.x = 185;
//			loaderRegPipe42.y = 336;
//			
//			loaderRegPipe42.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
//				loaderRegPipe42.width = 30;
//				loaderRegPipe42.height = 10;
//			});
//			
//			loaderRegPipe53.x = 235;
//			loaderRegPipe53.y = 336;
//			
//			loaderRegPipe53.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
//				loaderRegPipe53.width = 30;
//				loaderRegPipe53.height = 10;
//			});
			
			loaderRegPipe44.x = 285;
			loaderRegPipe44.y = 305;
			
			loaderRegPipe44.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe44.width = 30;
				loaderRegPipe44.height = 10;
			});
			
			
			loaderOutPipeClr40.x = 335
			loaderOutPipeClr40.y = 305;
			
			loaderOutPipeClr40.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderOutPipeClr40.width = 32;
				loaderOutPipeClr40.height = 8;
			});
			
			loaderRegTank40.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank41.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank42.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank43.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank44.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank45.load(new URLRequest("../res/reg_tank.png"));
			
			loaderRegPipe40.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe41.load(new URLRequest("../res/pipe_reg.png"))
//			loaderRegPipe42.load(new URLRequest("../res/pipe_reg.png"))
//			loaderRegPipe43.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe44.load(new URLRequest("../res/pipe_reg.png"))
				
			loaderOutPipeClr40.load(new URLRequest("../res/out_pipe_rst.png"))
			
			addChild(loaderRegTank40);
			addChild(loaderRegTank41);
			addChild(loaderRegTank42);
			addChild(loaderRegTank43);
			addChild(loaderRegTank44);
			addChild(loaderRegTank45);
			
			addChild(loaderRegPipe40);
			addChild(loaderRegPipe41);
			addChild(loaderRegPipe44);
			
			addChild(loaderOutPipeClr40);
			
			/** row five end **/
			
			/** row six start **/
			loaderRegTank50.x = 65;
			loaderRegTank50.y = 330;
			
			loaderRegTank50.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank50.width = 20;
				loaderRegTank50.height = 20;
			});
			
			loaderRegTank51.x = 115;
			loaderRegTank51.y = 330;
			
			loaderRegTank51.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank51.width = 20;
				loaderRegTank51.height = 20;
			});
			
			loaderRegTank52.x = 165;
			loaderRegTank52.y = 330;
			
			loaderRegTank52.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank52.width = 20;
				loaderRegTank52.height = 20;
			});
			
			loaderRegTank53.x = 215;
			loaderRegTank53.y = 330;
			
			loaderRegTank53.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank53.width = 20;
				loaderRegTank53.height = 20;
			});
			
			loaderRegTank54.x = 265;
			loaderRegTank54.y = 330;
			
			loaderRegTank54.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank54.width = 20;
				loaderRegTank54.height = 20;
			});
			
			loaderRegTank55.x = 315;
			loaderRegTank55.y = 330;
			
			loaderRegTank55.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegTank55.width = 20;
				loaderRegTank55.height = 20;
			});
			
			loaderRegPipe50.x = 85;
			loaderRegPipe50.y = 336;
			
			loaderRegPipe50.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe50.width = 30;
				loaderRegPipe50.height = 10;
			});
			
			loaderRegPipe51.x = 135;
			loaderRegPipe51.y = 336;
			
			loaderRegPipe51.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe51.width = 30;
				loaderRegPipe51.height = 10;
			});
			
			loaderRegPipe52.x = 185;
			loaderRegPipe52.y = 336;
			
			loaderRegPipe52.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe52.width = 30;
				loaderRegPipe52.height = 10;
			});
			
			loaderRegPipe53.x = 235;
			loaderRegPipe53.y = 336;
			
			loaderRegPipe53.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe53.width = 30;
				loaderRegPipe53.height = 10;
			});
			
			loaderRegPipe54.x = 285;
			loaderRegPipe54.y = 336;
			
			loaderRegPipe54.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe54.width = 30;
				loaderRegPipe54.height = 10;
			});
			
			loaderOutPipeClr50.x = 335
			loaderOutPipeClr50.y = 336;
			
			loaderOutPipeClr50.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderOutPipeClr50.width = 32;
				loaderOutPipeClr50.height = 8;
			});
			
			loaderRegTank50.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank51.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank52.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank53.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank54.load(new URLRequest("../res/reg_tank.png"));
			loaderRegTank55.load(new URLRequest("../res/reg_tank.png"));
			
			loaderRegPipe50.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe51.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe52.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe53.load(new URLRequest("../res/pipe_reg.png"))
			loaderRegPipe54.load(new URLRequest("../res/pipe_reg.png"))
			
			loaderOutPipeClr50.load(new URLRequest("../res/out_pipe_clr.png"))
				
			addChild(loaderRegTank50);
			addChild(loaderRegTank51);
			addChild(loaderRegTank52);
			addChild(loaderRegTank53);
			addChild(loaderRegTank54);
			addChild(loaderRegTank55);
			
			addChild(loaderRegPipe50);
			addChild(loaderRegPipe51);
			addChild(loaderRegPipe52);
			addChild(loaderRegPipe53);
			addChild(loaderRegPipe54);
			
			
			addChild(loaderOutPipeClr50);
		
			/** row six end **/
		}
		
	}
}