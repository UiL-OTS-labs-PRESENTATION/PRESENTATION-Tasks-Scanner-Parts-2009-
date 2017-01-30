scenario = "Route taak";

active_buttons = 3;
#hieronder geef je aan wat de codes zijn voor de response-knoppen
# 0,1 verwijst naar de knoppenkast, de meest linkse en meest rechtse
# 3 is voor de trigger van de scanner
button_codes = 1,2,3;
response_matching = simple_matching;
default_attenuation = 0.0; # hiermee kun je de instructie zachter zetten 0-1


begin;

picture {} default;
#hieronder noem je alle geluidsstimuli die je nodig hebt in het hele experiment.
sound {wavefile {filename = "startsignaal.wav"; }; }beep;
sound {wavefile {filename = "beepfil.wav"; }; }beepFil; 
#sound {wavefile {filename = "intro.wav"; }; }intro;
#sound {wavefile {filename = "einde.wav"; }; }einde;
sound {wavefile {filename = "goed.wav"; }; }goed;
sound {wavefile {filename = "fout.wav"; }; }fout;
#sound {wavefile {filename = "experimentbegint.wav"; }; }experimentbegint;
#stimuli trials
sound {wavefile {filename = "berggeitenN.wav";   }; }berggeiten;
sound {wavefile {filename = "hyenasN.wav";  }; }hyenas;
sound {wavefile {filename = "ijsberenN.wav"; }; }ijsberen;
sound {wavefile {filename = "kangaroesN.wav"; }; }kangaroes;
sound {wavefile {filename = "giraffen2.wav"; }; }giraffen; #giraffenN.wav ontbrak, heb de oude gebruikt
sound {wavefile {filename = "olifantenN.wav"; }; }olifanten;
sound {wavefile {filename = "chimpanzeesN.wav"; }; }chimpanzees;
sound {wavefile {filename = "poolvossenN.wav"; }; }poolvossen;
sound {wavefile {filename = "filler1R.wav"; }; }filler1;	 
sound {wavefile {filename = "filler2R.wav"; }; }filler2;	 
sound {wavefile {filename = "filler3R.wav"; }; }filler3;	 
sound {wavefile {filename = "filler4R.wav"; }; }filler4;	 
sound {wavefile {filename = "filler5R.wav"; }; }filler5;	 
sound {wavefile {filename = "filler6R.wav"; }; }filler6;	 
sound {wavefile {filename = "filler7R.wav"; }; }filler7;	 
sound {wavefile {filename = "filler8R.wav"; }; }filler8;	 
sound {wavefile {filename = "filler9R.wav"; }; }filler9;	 
sound {wavefile {filename = "filler10R.wav"; }; }filler10;	 
sound {wavefile {filename = "filler11R.wav"; }; }filler11;	 
sound {wavefile {filename = "filler12R.wav"; }; }filler12;	 
sound {wavefile {filename = "goed.wav"; }; }introductieroute;	 
sound {wavefile {filename = "goed.wav"; }; }routeinstr1;	 #wav nog aanpassen!
sound {wavefile {filename = "goed.wav"; }; }routeinstr2;	 #wav nog aanpassen!
sound {wavefile {filename = "goed.wav"; }; }routeinstr3;	 #wav nog aanpassen!
sound {wavefile {filename = "goed.wav"; }; }oefentrialsbegin;	 #wav nog aanpassen!
sound {wavefile {filename = "goed.wav"; }; }oefentrialseinde;	 #wav nog aanpassen!
sound {wavefile {filename = "goed.wav"; }; }laatstecheck;	 #wav nog aanpassen!


# 1 Algemene uitleg taak 

trial {
	trial_duration = forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	# press left

	sound introductieroute; code = "introductieroute";
};
trial {
	trial_duration = forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	# press left
  	nothing {}; code = "wait_button_press";
};


trial {
    trial_duration = forever;
    trial_type = specific_response;    	# trial ends when response
    terminator_button = 1;             	# press left
	picture {
		text {
			font_size = 18;
			caption = "De ROUTE-taak.

In deze taak vragen we je een keuze te maken welke van twee afstanden het grootst is. Het gaat hierbij steeds 
om de ROUTE afstand tussen twee dierenverblijven in de DIERENTUIN zoals je die in de beschrijving geleerd hebt.

Per trial krijg je twee keer een paar van dierenverblijven te horen. Stel je de route tussen deze verblijven 
voor alsof je MET DE KLOK MEE door de dierentuin LOOPT en beslis of de tweede route langer is dan de eerste.

Een voorbeeld ter illustratie: 

Je hoort eerst een waarschuwingstoon dat de trial begint.
 
Vervolgens hoor je twee paren.
vb kangaroes  giraffen 

En na een korte pauze weer twee 
Vb kangaroes  ijsberen

Nb Het eerste verblijf is altijd hetzelfde in de twee paren. 

De vraag in deze taak is: Is de route tussen het verblijf van de kangaroes en de ijsberen (de tweede route) 
langer dan die tussen de kangaroes en de giraffen (de eerste)?

Druk op de linkerknop voor het vervolg van de instructie...";	
			};
		x = 0 ; y = 0 ;		
		};
};


trial {
    trial_duration = forever;
    trial_type = specific_response;    	# trial ends when response
    terminator_button = 1;             	# press spacebar
	picture {
		text {
			font_size = 18;
			caption = "Om deze vraag te beantwoorden is het de bedoeling dat je je eerst de ROUTE voorstelt 
alsof je over de weg van de ingang van het verblijf van de kangaroes naar de ingang van 
het verblijf van de giraffen loopt. 

Hierna stel je je op dezelfde manier de route voor tussen de kangaroes en de ijsberen.

NB De looproute door de dierentuin is eenrichtingsverkeer. 
Bij het voorstellen van de route loop je dus altijd met de klok mee, nooit tegen de klok in!

Nadat je je beide routes hebt voorgesteld vergelijk je de afstanden met elkaar en beslis je of de tweede route 
langer is dan de eerste.

Is de tweede route LANGER dan de eerste, druk dan op de RECHTERknop (het rechterpijltje).
Is de tweede route NIET LANGER dan de eerste, druk dan op de LINKERknop (het linkerpijltje)

Dus onthoud goed: 
Rechterknop -> de tweede route is langer
Linkerknop -> de tweede route is niet langer

Druk op de linkerknop voor het vervolg van de instructie...";	
			};
		x = 0 ; y = 0 ;		
		};
};


trial {
    trial_duration = forever;
    trial_type = specific_response;    	# trial ends when response
    terminator_button = 1;             	# press spacebar
	picture {
		text {
			font_size = 18;
			caption = "In het geval van het voorbeeld is de tweede afstand langer dan de eerste dus zou je op de 
rechterknop moeten drukken.

Geef je antwoord zo snel mogelijk, maar zorg wel dat het niet ten koste gaat van je nauwkeurigheid. 
De maximumtijd om een antwoord te geven is drie seconden. Hierna start automatisch de volgende trial. 

Om de drie taken met elkaar te kunnen vergelijken hoor je tussen de testtrials af en toe zogenaamde nonsenstrials die uit 
drie geluiden bestaan. Luister passief naar deze nonsenstrials en druk na afloop altijd op de rechterknop als antwoord. 

Heb je nog vragen stel die dan nu aan de proefleider. 

Is het je helemaal duidelijk, druk dan nogmaals op de linkerknop om door te gaan!";	
			};
		x = 0 ; y = 0 ;		
		};
};


# 2 uitleg oefentrials 
trial {
    trial_duration = forever;
    trial_type = specific_response;    	# trial ends when response
    terminator_button = 1;             	# press spacebar
	picture {
		text {
			font_size = 18;
			caption = "Om aan de taak te wennen beginnen we eerst met zes oefentrials.

Na elke response krijg je een auditieve feedback over of je het goede antwoord hebt gegeven. 
Je hoort hierbij Goed of Fout. 

Druk op de linkerknop om te beginnen met de oefentrials.";	
			};
		x = 0 ; y = 0 ;		
		};
};

trial { 
	picture default;
};

# code nodig voor het geven van feedback
# ik denk dat het het handigst is om jouw oude taak te gebruiken voor de instructie en de oefentrials met feedback
# dan kunnen deze 2 trials weg

trial {
    trial_duration = stimuli_length;
    sound fout;
    time = 100;
    code = "fout";
	 nothing {}; delta_time = 2000; code = "end_trial";
} wrong;
trial {
    trial_duration = stimuli_length;
    sound goed;
    time = 100;
    code = "goed";
    nothing {}; delta_time = 2000; code = "end_trial";
} right;

TEMPLATE "oefen_route_marijn.tem" randomize {
# zin1: naam van 1e dierenpaar 
# z1code: code van het 1e dierenpaar voor de logfile 
# zin2: naam van 2e dierenpaar
# z2code: code van het 2e dierenpaar voor de logfile 
# antw: welke knop het goede antwoord is
# trialcode: unique trial code (conditie, trialtype)

# oefentrials
# 6 in totaal, van elke conditie 2 
zin11				zin12 			zin1code						zin21						zin22			zin2code						antw	trialcode;  
hyenas			chimpanzees		"hyenaschimpanzees" 		hyenas					poolvossen	"hyenaspoolvossen"		2 		"R_3738_1P";
poolvossen		ijsberen			"poolvossenijsberen"		poolvossen				kangaroes	"poolvossenkangaroes"	2 		"R_8384_1P";
ijsberen			hyenas			"ijsberenhyenas"			ijsberen					chimpanzees	"ijsberenchimpanzees" 	1 		"R_3237_3P";
kangaroes		poolvossen		"kangaroespoolvossen" 	kangaroes				ijsberen		"kangaroesijsberen" 		2 		"R_4843_3P";
ijsberen			chimpanzees		"ijsberenchimpanzees" 	ijsberen					giraffen		"ijsberengiraffes"		1 		"R_3735_2P";
poolvossen		olifanten 		"poolvossenolifanten"	poolvossen				kangaroes 	"poolvossenkangaroes"	1 		"R_8684_2P";
};


trial { 
	picture default;
};


trial { 
#	trial_duration = 2000;
	picture {
		text {
			font_size = 18;
#			system_memory = true;
			caption = "Dat waren de oefentrials!";	
			};
		x = 0 ; y = 0 ;		
	};
};      
	
#3 uitleg begin echte experiment
trial {
    trial_duration = forever;
    trial_type = specific_response;    	# trial ends when response
    terminator_button = 1;             	#   linkerknop is pressed
	picture {
		text {
			font_size = 18;
			caption = "Mochten er nog onduidelijkheden zijn vraag die dan nu aan de proefleider.

Ben je klaar voor de echte taak, druk dan nog een keer op de linkerknop.

Veel succes!";	
			};
		x = 0 ; y = 0 ;		
		};
};
