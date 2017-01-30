scenario = "Instruction Encoding R_S";

active_buttons = 1;
#hieronder geef je aan wat de codes zijn voor de response-knoppen
# 0,1 verwijst naar de knoppenkast, de meest linkse en meest rechtse
button_codes = 0;
#response_matching = simple_matching;


begin;


picture {} default;

#hieronder staan de namen van de plaatjes


sound {wavefile {filename = "routedeel1ms.wav"; }; }dieren1;
sound {wavefile {filename = "routedeel2ms.wav"; }; }dieren2;
sound {wavefile {filename = "controledeel1ms.wav"; }; }koffer1;
sound {wavefile {filename = "controledeel2ms.wav"; }; }koffer2;
sound {wavefile {filename = "startD.wav"; }; }startD;  
sound {wavefile {filename = "startC.wav"; }; }startC;  

#uitleg van de taak
trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			caption = 
"Welkom bij dit experiment!

Het experiment bestaat naast een uitleg uit het leren van twee beschrijvingen. 
Vervolgens vragen we je een korte taak te doen om de geleerde informatie te testen.

Je hoort zometeen als eerste een beschrijving van een dierentuin. 
Probeer je de dierentuin levendig voor te stellen en de informatie 
die genoemd wordt zo goed mogelijk te onthouden.
NB Je hoeft dus niet de precieze bewoording te onthouden!

Voorafgaand aan de beschrijving hoor je een piepje dat kenmerkend is voor de dierentuin beschrijving. 
De beschrijving zelf duurt iets meer dan een minuut.

Druk op de spatiebalk om de dierentuin beschrijving een keer in zijn geheel te horen!";
			};
		x = 0 ; y = 0 ;
	};
	nothing{ }; code = "uitleg1";
};


# aanbieden hele beschrijving
trial {
trial_duration = 2000;
picture default;
sound startD; code = "start_dieren";
};
trial {
trial_duration = stimuli_length;
picture default;
sound dieren1; code = "dieren1";
};
trial {
nothing {}; delta_time = 1000;
};
trial {
trial_duration = stimuli_length;
picture default;
sound dieren2; code = "dieren2";
};

trial {
    trial_duration = forever;
    trial_type = specific_response;    	# trial ends when response
    terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			caption = 
"Je hebt zojuist de hele eerste beschrijving gehoord over de dierentuin. 
Zometeen hoor je de tweede beschrijving in zijn geheel.

De tweede beschrijving gaat over een koffer met kledingstukken. 
Probeer ook hier de informatie die wordt gegeven zo goed mogelijk te onthouden.
NB Ook hier hoef je de precieze bewoording niet te weten!

Voorafgaand aan de beschrijving hoor je dit keer een ander piepje dat kenmerkend is 
voor de kofferbeschrijving. Ook deze beschrijving duurt iets meer dan een minuut.

Druk op de spatiebalk om de koffer beschrijving een keer in zijn geheel te horen!";	
			};
		x = 0 ; y = 0 ;		
		};
	nothing{ }; code = "uitleg2";
};

trial {
trial_duration = 2000;
picture default;
sound startC; code = "start_koffer";
};
trial {
trial_duration = stimuli_length;
picture default;
sound koffer1; code = "koffer1";
};
trial {
nothing {}; delta_time = 1000;
};
trial {
trial_duration = stimuli_length;
picture default;
sound koffer2; code = "koffer2";
};

trial { 
   trial_duration =  forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	#   button 1 is pressed
	picture {
		text {
			font_size = 18;
			caption = 
"Je hebt nu zowel de dierentuin als de kofferbeschrijving een keer in zijn geheel gehoord. 

Allebei de beschrijvingen bevatten vrij veel informatie. Om te zorgen dat je beide omschrijvingen 
goed leert, hoor je allebei de beschrijvingen zometeen nog een aantal keer. 

Vanaf nu zijn de beschrijvingen echter in tweeen gesplitst en worden ze afgewisseld aangeboden.

Als eerste hoor je zometeen het eerste deel van de dierentuin. 
Daarna hoor je het eerste deel van de koffer. 
Vervolgens hoor je het tweede deel van de dierentuin, 
gevolgd door het tweede gedeelte van de koffer. 
Na enkele seconden rust begint de serie opnieuw.

In totaal hoor je de gehele volgorde zes maal. Dit duurt ongeveer 16 minuten.

Als je nog vragen hebt, stel die dan nu aan de proefleider.";
		};
		x = 0 ; y = 0 ;
	};
	nothing{ }; code = "uitleg3";
};

trial {
picture default;
};

	
trial { 
	picture {
		text {
			font_size = 18;
			caption = 
"Dit was het eerste deel van het experiment.
Straks in de scanner krijg je de rest te horen";
		}; 
		x =0 ; y = 0 ;
	};
	duration = 3000;
	nothing{ }; code = "einde";

};
