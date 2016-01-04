	class playerHUD
   	{
		idd=-1;
		movingEnable=0;
	  	fadein=0;
		duration = 99999999999999999999999999999999999999999999;
	  	fadeout=0;
		name="playerHUD";
		onLoad="uiNamespace setVariable ['playerHUD',_this select 0]";
		objects[]={};
		
		class controlsBackground 
		{
			//add watermark logo
			class logo : life_RscPicture 
			{
			idc = -1;
			text = "emblem.paa";
			x = safeZoneX+safeZoneW-0.22; y = safeZoneY+safeZoneH-0.28;
			w = 0.2; h = 0.29;
			};
		
			class foodHIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "icons\food.paa";
				x = safeZoneX+safeZoneW-0.135; y = safeZoneY+safeZoneH-0.54;
				w = 0.03; h = 0.04;
			};
			
			class waterHIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "icons\water.paa";
				x = safeZoneX+safeZoneW-0.14; y = safeZoneY+safeZoneH-0.50;
				w = 0.04; h = 0.04;
			};
			
			class healthHIcon : life_RscPicture
			{
				idc = -1;
				text = "icons\health.paa";
				x = safeZoneX+safeZoneW-0.13; y = safeZoneY+safeZoneH-0.445;
				w = 0.02; h = 0.03;
			};

			class cashHIcon : life_RscPicture
			{
				idc = -1;
				text = "icons\money.paa";
				x = safeZoneX+safeZoneW-0.13; y = safeZoneY+safeZoneH-0.395;
				w = 0.02; h = 0.03;
			};

			class bankHIcon : life_RscPicture
			{
				
				idc = -1;
				text = "icons\bank.paa";
				x = safeZoneX+safeZoneW-0.13; y = safeZoneY+safeZoneH-0.345;
				w = 0.02; h = 0.03;
			};
		};
		
		class controls
		{
			class foodtext
			{
				type=0;
				idc=23500;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class watertext
			{
				type=0;
				idc=23510;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class healthtext
			{
				type=0;
				idc=23515;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};

			class cashtext
			{
				type=0;
				idc=23516;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};

			class banktext
			{
				type=0;
				idc=23517;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
		};   
 	};
