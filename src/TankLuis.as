package
{

	import flash.display.Loader;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.ui.Keyboard;
	
	public class TankLuis extends Sprite
	{
	
		private var inFilename:String = "sampleInput.txt";
		
		public var outInfoArray:Array = new Array(); 
		public var allInfoArray:Array = new Array(); 
		public var probInfoArray:Array = new Array(); 
		
		private var isShiftKeyDown:Boolean = false;
		
		private var regTankURL: String = "../res/reg_tank.png";
		private var clrTankURL: String = "../res/clr_reg_tank.png";
		
		private var regPipeURL: String = "../res/lv_pipe_reg.png";
		private var clrPipeURL: String = "../res/lv_pipe_clr.png";
		
		private var pricePerTank: int = 80;
		private var pricePerPipe: int = 10;
		private var totalPrice: int = 0;
		
		private var textSoFarSpentValue:TextField = new TextField();
		
		private var procssedTanks: Array = new Array();
		private var procssedPipes: Array = new Array();
		
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
		private var loaderRegPipe11_1: Loader = new Loader();
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
		private var loaderRegPipe21_1: Loader = new Loader();
		private var loaderRegPipe21_2: Loader = new Loader();
		private var loaderRegPipe22: Loader = new Loader();
		private var loaderRegPipe22_1: Loader = new Loader();
		private var loaderRegPipe23: Loader = new Loader();
		private var loaderRegPipe23_1: Loader = new Loader();
		private var loaderRegPipe23_2: Loader = new Loader();
		private var loaderRegPipe24: Loader = new Loader();
		private var loaderRegPipe24_1: Loader = new Loader();
		
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
		private var loaderRegPipe30_1: Loader = new Loader();
		private var loaderRegPipe31: Loader = new Loader();
		private var loaderRegPipe31_1: Loader = new Loader();
		private var loaderRegPipe32: Loader = new Loader();
		private var loaderRegPipe33: Loader = new Loader();
		private var loaderRegPipe33_1: Loader = new Loader();
		private var loaderRegPipe33_2: Loader = new Loader();
		private var loaderRegPipe34: Loader = new Loader();
		private var loaderRegPipe34_1: Loader = new Loader();
		
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
		private var loaderRegPipe42_1: Loader = new Loader();
		private var loaderRegPipe43: Loader = new Loader();
		private var loaderRegPipe43_1: Loader = new Loader();
		private var loaderRegPipe43_2: Loader = new Loader();
		private var loaderRegPipe44: Loader = new Loader();
		private var loaderRegPipe44_1: Loader = new Loader();
		
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
		private var loaderRegPipe50_1: Loader = new Loader();
		private var loaderRegPipe51: Loader = new Loader();
		private var loaderRegPipe51_1: Loader = new Loader();
		private var loaderRegPipe52: Loader = new Loader();
		private var loaderRegPipe52_1: Loader = new Loader();
		private var loaderRegPipe53: Loader = new Loader();
		private var loaderRegPipe53_1: Loader = new Loader();
		private var loaderRegPipe54: Loader = new Loader();
		private var loaderRegPipe54_1: Loader = new Loader();
		
		// pipe out
		private var loaderOutPipeClr50: Loader = new Loader();
		
		public function TankLuis()
		{
			
			var inputFileLoader:URLLoader = new URLLoader();
			inputFileLoader.addEventListener(Event.COMPLETE, onInputFileLoaded);
			inputFileLoader.load(new URLRequest(inFilename));
			
			init();
		}
		
		private function onInputFileLoaded(e:Event):void {
			var inputArray:Array = e.target.data.split(/\n/);
			var reg:RegExp = /(\ )+/;
			var lineNum:int = 0;
			while (lineNum < inputArray.length && inputArray[lineNum] != 888 ) {
				allInfoArray[lineNum + 1] = (inputArray[lineNum].split(reg)).filter(isNumber, null);
				++lineNum;
			}
			
			allInfoArray[lineNum + 1] = [888];
			
			lineNum = 0;
			while (allInfoArray[lineNum-1] != 999) {
				probInfoArray[lineNum] = allInfoArray[lineNum]
				++lineNum;
			}
			
			trace(allInfoArray);
		}
		
		//Small function that determines if input is a number or not
		public function isNumber(str:String, index:int, array:Array):Boolean {  
			var n:Number = parseInt(str);
			if (isNaN(n)) { 
				//trace("Not a Number!");
				return false; 
			}
			else {
				//trace("Found a Number!");
				return true;
			} 
		}
		
		public function init():void 
		{ 
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, checkKeyDown);	
			stage.addEventListener(KeyboardEvent.KEY_UP, checkKeyUp);	
			
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
			textInnerWall.text = "Check Inner Walls of a Tank: $"+pricePerTank;
			textInnerWall.x = 15;
			textInnerWall.y = 30;
			textInnerWall.width = 180;
			
			var textPipeWater:TextField = new TextField();
			textPipeWater.text = "Test Pipe Water: $"+pricePerPipe;
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
			
			
			textSoFarSpentValue.text = "$"+totalPrice;
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
			
			loaderRegPipe00.x = 84;
			loaderRegPipe00.y = 170;
			
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
				
			loaderRegTank00.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank01.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank02.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank03.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank04.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank05.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			
			loaderRegPipe00.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe01.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe01_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe02.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe03.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe04.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			
			loaderRegTank00.load(new URLRequest(regTankURL));
			loaderRegTank01.load(new URLRequest(regTankURL));
			loaderRegTank02.load(new URLRequest(regTankURL));
			loaderRegTank03.load(new URLRequest(regTankURL));
			loaderRegTank04.load(new URLRequest(regTankURL));
			loaderRegTank05.load(new URLRequest(regTankURL));
			
			loaderRegPipe00.load(new URLRequest(regPipeURL));
			loaderRegPipe01.load(new URLRequest(regPipeURL));
			loaderRegPipe01_1.load(new URLRequest(regPipeURL));
			loaderRegPipe02.load(new URLRequest(regPipeURL));
			loaderRegPipe03.load(new URLRequest(regPipeURL));
			loaderRegPipe04.load(new URLRequest(regPipeURL));
			
			loaderOutPipeClr00.load(new URLRequest("../res/out_pipe_clr.png"));
			
			addChild(loaderRegTank00);
			addChild(loaderRegTank01);
			addChild(loaderRegTank02);
			addChild(loaderRegTank03);
			addChild(loaderRegTank04);
			addChild(loaderRegTank05);
			
			addChild(loaderRegPipe00);
			addChild(loaderRegPipe01);
			addChild(loaderRegPipe01_1);
			addChild(loaderRegPipe02);
			addChild(loaderRegPipe03);
			addChild(loaderRegPipe04);
			
			addChild(loaderOutPipeClr00);
			
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
			
			loaderRegPipe11_1.x = 137;
			loaderRegPipe11_1.y = 204;
			
			loaderRegPipe11_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe11_1.width = 48;
				loaderRegPipe11_1.height = 10;
				loaderRegPipe11_1.rotation = 45;
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
			
			loaderRegTank10.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank11.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank12.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank13.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank14.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank15.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			
			loaderRegPipe10.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe11_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe12.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe14.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe12_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe13_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe14_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			
			loaderRegTank10.load(new URLRequest(regTankURL));
			loaderRegTank11.load(new URLRequest(regTankURL));
			loaderRegTank12.load(new URLRequest(regTankURL));
			loaderRegTank13.load(new URLRequest(regTankURL));
			loaderRegTank14.load(new URLRequest(regTankURL));
			loaderRegTank15.load(new URLRequest(regTankURL));
			
			loaderRegPipe10.load(new URLRequest(regPipeURL))
			loaderRegPipe11_1.load(new URLRequest(regPipeURL))
			loaderRegPipe12.load(new URLRequest(regPipeURL))
			loaderRegPipe14.load(new URLRequest(regPipeURL))
			loaderRegPipe12_1.load(new URLRequest(regPipeURL))
			loaderRegPipe13_1.load(new URLRequest(regPipeURL))
			loaderRegPipe14_1.load(new URLRequest(regPipeURL))
			
			loaderOutPipeClr10.load(new URLRequest("../res/out_pipe_clr.png"))
				
			addChild(loaderRegTank10);
			addChild(loaderRegTank11);
			addChild(loaderRegTank12);
			addChild(loaderRegTank13);
			addChild(loaderRegTank14);
			addChild(loaderRegTank15);
			
			addChild(loaderRegPipe10);
			addChild(loaderRegPipe12);
			addChild(loaderRegPipe14);
			addChild(loaderRegPipe11_1);
			addChild(loaderRegPipe12_1);
			addChild(loaderRegPipe13_1);
			addChild(loaderRegPipe14_1);
			
			addChild(loaderOutPipeClr10);
			
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
			
			loaderRegPipe22.x = 184;
			loaderRegPipe22.y = 237;
			
			loaderRegPipe22.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe22.width = 32;
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
			
			loaderRegPipe20_1.x = 80;
			loaderRegPipe20_1.y = 237;
			
			loaderRegPipe20_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe20_1.width = 50;
				loaderRegPipe20_1.height = 10;
				loaderRegPipe20_1.rotation = -45;
			});
			
			loaderRegPipe20_2.x = 83;
			loaderRegPipe20_2.y = 236;
			
			loaderRegPipe20_2.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe20_2.width = 50;
				loaderRegPipe20_2.height = 10;
				loaderRegPipe20_2.rotation = 45;
			});
			
			loaderRegPipe21_1.x = 130;
			loaderRegPipe21_1.y = 237;
			
			loaderRegPipe21_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe21_1.width = 50;
				loaderRegPipe21_1.height = 10;
				loaderRegPipe21_1.rotation = -45;
			});
			
			loaderRegPipe21_2.x = 134;
			loaderRegPipe21_2.y = 237;
			
			loaderRegPipe21_2.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe21_2.width = 50;
				loaderRegPipe21_2.height = 10;
				loaderRegPipe21_2.rotation = 45;
			});
			
			loaderRegPipe22_1.x = 185;
			loaderRegPipe22_1.y = 237;
			
			loaderRegPipe22_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe22_1.width = 50;
				loaderRegPipe22_1.height = 10;
				loaderRegPipe22_1.rotation = 45;
			});
			
			loaderRegPipe23_1.x = 230;
			loaderRegPipe23_1.y = 237;
			
			loaderRegPipe23_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe23_1.width = 50;
				loaderRegPipe23_1.height = 10;
				loaderRegPipe23_1.rotation = -45;
			});
			
			loaderRegPipe23_2.x = 235;
			loaderRegPipe23_2.y = 237;
			
			loaderRegPipe23_2.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe23_2.width = 50;
				loaderRegPipe23_2.height = 10;
				loaderRegPipe23_2.rotation = 45;
			});
			
			loaderRegPipe24_1.x = 285;
			loaderRegPipe24_1.y = 237;
			
			loaderRegPipe24_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe24_1.width = 50;
				loaderRegPipe24_1.height = 10;
				loaderRegPipe24_1.rotation = 45;
			});
			
			loaderRegTank20.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank21.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank22.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank23.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank24.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank25.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			
			loaderRegPipe20.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe20_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe20_2.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe21_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe21_2.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe22.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe22_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe23_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe23_2.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe24.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe24_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			
			loaderRegTank20.load(new URLRequest(regTankURL));
			loaderRegTank21.load(new URLRequest(regTankURL));
			loaderRegTank22.load(new URLRequest(regTankURL));
			loaderRegTank23.load(new URLRequest(regTankURL));
			loaderRegTank24.load(new URLRequest(regTankURL));
			loaderRegTank25.load(new URLRequest(regTankURL));
			
			loaderRegPipe20.load(new URLRequest(regPipeURL))
			loaderRegPipe20_1.load(new URLRequest(regPipeURL))
			loaderRegPipe20_2.load(new URLRequest(regPipeURL))
			loaderRegPipe21_1.load(new URLRequest(regPipeURL))
			loaderRegPipe21_2.load(new URLRequest(regPipeURL))
			loaderRegPipe22.load(new URLRequest(regPipeURL))
			loaderRegPipe22_1.load(new URLRequest(regPipeURL))
			loaderRegPipe23_1.load(new URLRequest(regPipeURL))
			loaderRegPipe23_2.load(new URLRequest(regPipeURL))
			loaderRegPipe24.load(new URLRequest(regPipeURL))
			loaderRegPipe24_1.load(new URLRequest(regPipeURL))
				
			loaderOutPipeClr20.load(new URLRequest("../res/out_pipe_clr.png"))
			
			addChild(loaderRegTank20);
			addChild(loaderRegTank21);
			addChild(loaderRegTank22);
			addChild(loaderRegTank23);
			addChild(loaderRegTank24);
			addChild(loaderRegTank25);
			
			addChild(loaderRegPipe20);
			addChild(loaderRegPipe20_1);
			addChild(loaderRegPipe20_2);
			addChild(loaderRegPipe21_1);
			addChild(loaderRegPipe21_2);
			addChild(loaderRegPipe22);
			addChild(loaderRegPipe22_1);
			addChild(loaderRegPipe23_1);
			addChild(loaderRegPipe23_2);
			addChild(loaderRegPipe24);
			addChild(loaderRegPipe24_1);
			
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
			
			loaderRegPipe30_1.x = 83;
			loaderRegPipe30_1.y = 271;
			
			loaderRegPipe30_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe30_1.width = 50;
				loaderRegPipe30_1.height = 10;
				loaderRegPipe30_1.rotation = 45;
			});
			
			
			loaderRegPipe31_1.x = 134;
			loaderRegPipe31_1.y = 271;
			
			loaderRegPipe31_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe31_1.width = 50;
				loaderRegPipe31_1.height = 10;
				loaderRegPipe31_1.rotation = 45;
			});
			
			
			loaderRegPipe33_1.x = 230;
			loaderRegPipe33_1.y = 271;
			
			loaderRegPipe33_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe33_1.width = 50;
				loaderRegPipe33_1.height = 10;
				loaderRegPipe33_1.rotation = -45;
			});
			
			loaderRegPipe33_2.x = 235;
			loaderRegPipe33_2.y = 271;
			
			loaderRegPipe33_2.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe33_2.width = 50;
				loaderRegPipe33_2.height = 10;
				loaderRegPipe33_2.rotation = 45;
			});
			
			loaderRegPipe34_1.x = 285;
			loaderRegPipe34_1.y = 271;
			
			loaderRegPipe34_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe34_1.width = 50;
				loaderRegPipe34_1.height = 10;
				loaderRegPipe34_1.rotation = 45;
			});
			
			loaderRegTank30.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank31.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank32.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank33.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank34.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank35.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			
			loaderRegPipe30.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe30_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe31.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe31_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe32.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe33.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe33_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe33_2.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe34_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			
			loaderRegTank30.load(new URLRequest(regTankURL));
			loaderRegTank31.load(new URLRequest(regTankURL));
			loaderRegTank32.load(new URLRequest(regTankURL));
			loaderRegTank33.load(new URLRequest(regTankURL));
			loaderRegTank34.load(new URLRequest(regTankURL));
			loaderRegTank35.load(new URLRequest(regTankURL));
			
			loaderRegPipe30.load(new URLRequest(regPipeURL));
			loaderRegPipe30_1.load(new URLRequest(regPipeURL));
			loaderRegPipe31.load(new URLRequest(regPipeURL));
			loaderRegPipe31_1.load(new URLRequest(regPipeURL));
			loaderRegPipe32.load(new URLRequest(regPipeURL));
			loaderRegPipe33.load(new URLRequest(regPipeURL));
			loaderRegPipe33_1.load(new URLRequest(regPipeURL));
			loaderRegPipe33_2.load(new URLRequest(regPipeURL));
			loaderRegPipe34_1.load(new URLRequest(regPipeURL));
				
			loaderOutPipeClr30.load(new URLRequest("../res/out_pipe_clr.png"))
				
			addChild(loaderRegTank30);
			addChild(loaderRegTank31);
			addChild(loaderRegTank32);
			addChild(loaderRegTank33);
			addChild(loaderRegTank34);
			addChild(loaderRegTank35);
			
			addChild(loaderRegPipe30);
			addChild(loaderRegPipe30_1);
			addChild(loaderRegPipe31);
			addChild(loaderRegPipe31_1);
			addChild(loaderRegPipe32);
			addChild(loaderRegPipe33);
			addChild(loaderRegPipe33_1);
			addChild(loaderRegPipe33_2);
			addChild(loaderRegPipe34_1);
			
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
			
			loaderRegPipe42_1.x = 185;
			loaderRegPipe42_1.y = 304;
			
			loaderRegPipe42_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe42_1.width = 50;
				loaderRegPipe42_1.height = 10;
				loaderRegPipe42_1.rotation = 45;
			});
			
			loaderRegPipe43_1.x = 230;
			loaderRegPipe43_1.y = 304;
			
			loaderRegPipe43_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe43_1.width = 50;
				loaderRegPipe43_1.height = 10;
				loaderRegPipe43_1.rotation = -45;
			});
			
			loaderRegPipe43_2.x = 235;
			loaderRegPipe43_2.y = 304;
			
			loaderRegPipe43_2.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe43_2.width = 50;
				loaderRegPipe43_2.height = 10;
				loaderRegPipe43_2.rotation = 45;
			});
			
			loaderRegPipe44_1.x = 285;
			loaderRegPipe44_1.y = 304;
			
			loaderRegPipe44_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe44_1.width = 50;
				loaderRegPipe44_1.height = 10;
				loaderRegPipe44_1.rotation = 45;
			});
			
			loaderRegTank40.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank41.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank42.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank43.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank44.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank45.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			
			loaderRegPipe40.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe41.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe44.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe42_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe43_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe43_2.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe44_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			
			loaderRegTank40.load(new URLRequest(regTankURL));
			loaderRegTank41.load(new URLRequest(regTankURL));
			loaderRegTank42.load(new URLRequest(regTankURL));
			loaderRegTank43.load(new URLRequest(regTankURL));
			loaderRegTank44.load(new URLRequest(regTankURL));
			loaderRegTank45.load(new URLRequest(regTankURL));
			
			loaderRegPipe40.load(new URLRequest(regPipeURL));
			loaderRegPipe41.load(new URLRequest(regPipeURL));
//			loaderRegPipe42.load(new URLRequest(regPipeURL));
//			loaderRegPipe43.load(new URLRequest(regPipeURL));
			loaderRegPipe44.load(new URLRequest(regPipeURL));
			loaderRegPipe42_1.load(new URLRequest(regPipeURL));
			loaderRegPipe43_1.load(new URLRequest(regPipeURL));
			loaderRegPipe43_2.load(new URLRequest(regPipeURL));
			loaderRegPipe44_1.load(new URLRequest(regPipeURL));
				
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
			
			addChild(loaderRegPipe42_1);
			addChild(loaderRegPipe43_1);
			addChild(loaderRegPipe43_2);
			addChild(loaderRegPipe44_1);
			
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
			
			loaderRegPipe50_1.x = 80;
			loaderRegPipe50_1.y = 336;
			
			loaderRegPipe50_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe50_1.width = 50;
				loaderRegPipe50_1.height = 10;
				loaderRegPipe50_1.rotation = -45;
			});
			
			loaderRegPipe51_1.x = 130;
			loaderRegPipe51_1.y = 336;
			
			loaderRegPipe51_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe51_1.width = 50;
				loaderRegPipe51_1.height = 10;
				loaderRegPipe51_1.rotation = -45;
			});
			
			loaderRegPipe52_1.x = 180;
			loaderRegPipe52_1.y = 336;
			
			loaderRegPipe52_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe52_1.width = 50;
				loaderRegPipe52_1.height = 10;
				loaderRegPipe52_1.rotation = -45;
			});
			
			loaderRegPipe53_1.x = 230;
			loaderRegPipe53_1.y = 336;
			
			loaderRegPipe53_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe53_1.width = 50;
				loaderRegPipe53_1.height = 10;
				loaderRegPipe53_1.rotation = -45;
			});
			
			loaderRegPipe54_1.x = 280;
			loaderRegPipe54_1.y = 336;
			
			loaderRegPipe54_1.contentLoaderInfo.addEventListener(Event.COMPLETE, function resizeImage(evt:Event):void {
				loaderRegPipe54_1.width = 50;
				loaderRegPipe54_1.height = 10;
				loaderRegPipe54_1.rotation = -45;
			});
			
			loaderRegTank50.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank51.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank52.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank53.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank54.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			loaderRegTank55.addEventListener(MouseEvent.CLICK, markTankAsCompleted);
			
			loaderRegPipe50.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe51.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe52.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe53.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe54.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe50_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe51_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe52_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe53_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			loaderRegPipe54_1.addEventListener(MouseEvent.CLICK, markPipeAsCompleted);
			
			loaderRegTank50.load(new URLRequest(regTankURL));
			loaderRegTank51.load(new URLRequest(regTankURL));
			loaderRegTank52.load(new URLRequest(regTankURL));
			loaderRegTank53.load(new URLRequest(regTankURL));
			loaderRegTank54.load(new URLRequest(regTankURL));
			loaderRegTank55.load(new URLRequest(regTankURL));
			
			loaderRegPipe50.load(new URLRequest(regPipeURL));
			loaderRegPipe51.load(new URLRequest(regPipeURL))
			loaderRegPipe52.load(new URLRequest(regPipeURL))
			loaderRegPipe53.load(new URLRequest(regPipeURL))
			loaderRegPipe54.load(new URLRequest(regPipeURL))
			loaderRegPipe50_1.load(new URLRequest(regPipeURL))
			loaderRegPipe51_1.load(new URLRequest(regPipeURL))
			loaderRegPipe52_1.load(new URLRequest(regPipeURL))
			loaderRegPipe53_1.load(new URLRequest(regPipeURL))
			loaderRegPipe54_1.load(new URLRequest(regPipeURL))
			
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
			
			addChild(loaderRegPipe50_1);
			addChild(loaderRegPipe51_1);
			addChild(loaderRegPipe52_1);
			addChild(loaderRegPipe53_1);
			addChild(loaderRegPipe54_1);
			
			addChild(loaderOutPipeClr50);
		
			/** row six end **/
		}

		private function markTankAsCompleted(event:MouseEvent):void {
			
			var loader:Loader = Loader(event.target);
			
			
			if(procssedTanks.indexOf(loader) == -1 && !isShiftKeyDown){
		
				loader.load(new URLRequest("../res/clr_tank.png"));
				
				totalPrice+=pricePerTank;
				textSoFarSpentValue.text = "$"+totalPrice;
				
				procssedTanks.push(loader);
				
			}else if (procssedTanks.indexOf(loader) == -1 && isShiftKeyDown){
				
				var x:int = loader.x;
				var y:int = loader.y;
				
				var circle:Shape = new Shape();
				circle.graphics.clear();
				circle.graphics.lineStyle(1,0x000000);
//				circle.graphics.beginFill(0x990000);
				circle.graphics.drawCircle(x + 10, y + 10, 15);
				circle.graphics.endFill();
				addChild(circle);
				
			}
			
		}
		
		private function markPipeAsCompleted(event:MouseEvent):void {

			//trace("clickHandler: " + event);
			var loader:Loader = Loader(event.target);
			
			if(procssedPipes.indexOf(loader) == -1){
		
				loader.load(new URLRequest("../res/lv_pipe_clr.png"));
				totalPrice+=pricePerPipe;
				textSoFarSpentValue.text = "$"+totalPrice;
				
				procssedPipes.push(loader);
			}
			
			
				
		}
		
		private function checkKeyDown(event:KeyboardEvent):void {
			
			if(event.keyCode == Keyboard.SHIFT){
				isShiftKeyDown = true;
			}
			
		}
		
		private function checkKeyUp(event:KeyboardEvent):void {
			if(event.keyCode == Keyboard.SHIFT){
				isShiftKeyDown = false;
			}
		}
	}
}