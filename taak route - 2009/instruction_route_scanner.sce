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
sound {wavefile {filename = "goed.wav"; }; }goed;
sound {wavefile {filename = "fout.wav"; }; }fout;
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

#instructie
sound {wavefile {filename = "R3_uitleg_1.wav"; }; }R3_uitleg_1;	 
sound {wavefile {filename = "R3_uitleg_2.wav"; }; }R3_uitleg_2;	 
sound {wavefile {filename = "R3_uitleg_3a.wav"; }; }R3_uitleg_3a;
sound {wavefile {filename = "R3_uitleg_3b.wav"; }; }R3_uitleg_3b;	 
sound {wavefile {filename = "R3_uitleg_4.wav"; }; }R3_uitleg_4;	 
sound {wavefile {filename = "R3_uitleg_5.wav"; }; }R3_uitleg_5;	 

# 1 Algemene uitleg taak 
trial {
	trial_duration = stimuli_length;
   sound R3_uitleg_1; code = "R3_uitleg_1";
	nothing {}; delta_time = 1500;
};

trial {
	trial_duration = stimuli_length;
   sound R3_uitleg_2; code = "R3_uitleg_2";
	nothing {}; delta_time = 1500;
};

trial {
	trial_duration = stimuli_length;
   sound R3_uitleg_3a; code = "R3_uitleg_3a";
	nothing {}; delta_time = 1500;
};

#voorbeeldtrial
trial {
	sound beep; code = "beep"; 
	nothing {}; delta_time = 1000; code = "begin1"; 
	sound kangaroes; 
	nothing {}; delta_time = 1600;
	sound giraffen; 
	nothing {};  code = "end1"; #delta_time = 1000;
	nothing {}; delta_time = 2300; code = "begin2"; 
	sound kangaroes; code = "zin21";  
	nothing {}; delta_time = 1600; 
	sound olifanten; 
	nothing {};  code = "end2"; # 
	nothing {}; delta_time = 1000;
};

trial {
	trial_duration = forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	# press left
	sound R3_uitleg_3b; code = "R3_uitleg_3b";
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
kangaroes		poolvossen		"kangaroespoolvossen" 	kangaroes				ijsberen		"kangaroesijsberen" 		2 		"R_4843_3P";
ijsberen			chimpanzees		"ijsberenchimpanzees" 	ijsberen					giraffen		"ijsberengiraffes"		1 		"R_3735_2P";
poolvossen		olifanten 		"poolvossenolifanten"	poolvossen				kangaroes 	"poolvossenkangaroes"	1 		"R_8684_2P";
};

trial {
	trial_duration = stimuli_length;
   sound R3_uitleg_4; code = "R3_uitleg_4";
	nothing {}; delta_time = 1500;
};

trial { 
	picture default;
};


