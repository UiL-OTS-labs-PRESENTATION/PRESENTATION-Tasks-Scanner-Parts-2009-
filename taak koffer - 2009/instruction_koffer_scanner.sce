#pcl_file = "koffer.pcl";
scenario = "Koffer taak";

active_buttons = 3;
#hieronder geef je aan wat de codes zijn voor de response-knoppen
# 0,1 verwijst naar de knoppenkast, de meest linkse en meest rechtse
# 9 is voor de trigger van de scanner
button_codes = 1,2,9;
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
# kledingstukken
sound {wavefile {filename = "jasNK.wav";   }; }jas;
sound {wavefile {filename = "broekNK.wav";  }; }broek;
sound {wavefile {filename = "hemdNK.wav"; }; }hemd;
sound {wavefile {filename = "rokNK.wav"; }; }rok;
sound {wavefile {filename = "truiNK.wav"; }; }trui;
sound {wavefile {filename = "jurkNK.wav"; }; }jurk;
sound {wavefile {filename = "vestNK.wav"; }; }vest;
sound {wavefile {filename = "shirtNK.wav"; }; }shirt;
# kleuren
sound {wavefile {filename = "roodNK.wav";   }; }rood;
sound {wavefile {filename = "geelNK.wav";  }; }geel;
sound {wavefile {filename = "bruinNK.wav"; }; }bruin;
sound {wavefile {filename = "witNK.wav"; }; }wit;
sound {wavefile {filename = "blauwNK.wav"; }; }blauw;
sound {wavefile {filename = "groenNK.wav"; }; }groen;
sound {wavefile {filename = "paarsNK.wav"; }; }paars;
sound {wavefile {filename = "zwartNK.wav"; }; }zwart;
#fillers
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
sound {wavefile {filename = "K_uitleg_6.wav"; }; }K_uitleg_6;	 #wav nog aanpassen!
sound {wavefile {filename = "K_uitleg_7.wav"; }; }K_uitleg_7;	 #wav nog aanpassen!
sound {wavefile {filename = "K_uitleg_8.wav"; }; }K_uitleg_8;	 #wav nog aanpassen!
#sound {wavefile {filename = "goed.wav"; }; }laatstecheck;	 #wav nog aanpassen!

# 1 Algemene uitleg taak 

trial {
	trial_duration = forever;
   trial_type = specific_response;    	# trial ends when response
   terminator_button = 1;             	# press left
	sound K_uitleg_6; code = "K_uitleg_6";
};


trial { 
	picture default;
};

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


TEMPLATE "oefen_koffer_marijn.tem" randomize {
# zin1: naam van 1e combinatie 
# z1code: code van de 1e combinatie voor de logfile 
# zin2: naam van 2e combinatie
# z2code: code van het 2e combinatie voor de logfile 
# antw: welke knop het goede antwoord is
# trialcode: unique trial code (conditie, trialtype)

# oefentrials
# 6 in totaal, elk antwoord 3 keer
zin11		zin12 	zin1code				zin21				zin22			zin2code			antw	trialcode;  
jurk		groen		"jurkgroen" 		hemd				wit			"hemdwit"		2		"jugr_hewi_gf_2P";
vest 		wit		"vestwit" 			jas				geel			"jasgeel"		1		"vewi_jage_ff_1P";
};

trial { 
	picture default;
};

trial {
	trial_duration = stimuli_length;
	sound K_uitleg_7; code = "K_uitleg_7";
};