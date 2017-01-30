pcl_file = "koffer_marijn.pcl";
scenario = "Koffer taak";

active_buttons = 3;
#hieronder geef je aan wat de codes zijn voor de response-knoppen
# 0,1 verwijst naar de knoppenkast, de meest linkse en meest rechtse
# 9 is voor de trigger van de scanner
button_codes = 1,2,9;
response_matching = simple_matching;


begin;

picture {} default;
#hieronder noem je alle geluidsstimuli die je nodig hebt in het hele experiment.
sound {wavefile {filename = "startsignaal.wav"; }; }beep;
sound {wavefile {filename = "beepfil.wav"; }; }beepFil;
sound {wavefile {filename = "goed.wav"; }; }goed;
sound {wavefile {filename = "fout.wav"; }; }fout;
#stimuli trials
# kledingstukken
sound {wavefile {filename = "broekNK.wav";  }; }broek;
sound {wavefile {filename = "hemdNK.wav"; }; }hemd;
sound {wavefile {filename = "rokNK.wav"; }; }rok;
sound {wavefile {filename = "truiNK.wav"; }; }trui;

# kleuren
sound {wavefile {filename = "roodNK.wav";   }; }rood;
sound {wavefile {filename = "geelNK.wav";  }; }geel;
sound {wavefile {filename = "blauwNK.wav"; }; }blauw;
sound {wavefile {filename = "groenNK.wav"; }; }groen;

#fillers
sound {wavefile {filename = "filler1R.wav"; }; }filler1;	
sound {wavefile {filename = "filler2R.wav"; }; }filler2;	

#instructie
sound {wavefile {filename = "K_uitleg_8.wav"; }; }K_uitleg_8;	
sound {wavefile {filename = "K_uitleg_9.wav"; }; }K_uitleg_9;

trial {	
trial_duration = stimuli_length;
	sound K_uitleg_8; code = "K_uitleg_8";
}introTrial;

trial {
trial_duration = stimuli_length;
sound K_uitleg_9; code = "K_uitleg_9";
}eindeTrial;

# 1 Algemene uitleg taak 


text {
   caption = "Begin experiment"; 
   font_size = 24;
   preload = true;
} text1;

# standaard trial nodig om code naar de logfile te schrijven
trial {
  stimulus_event{
  nothing{};
  code = "";
  }response_stim;   
} responseTrial;

# standaard trial om tekst op het scherm te zetten
trial {      
  stimulus_event{
   picture {
      text text1;
      x = 0; y = 0;
   };
   code = "text";
   }trial1_stim;
} trial1;

trial {      
	sound beep; code = "beep";
	nothing {}; delta_time = 1000;
} beepTrial;

trial {      
	sound beepFil; code = "beepFiller";
	nothing {}; delta_time = 1000;
} beepFiller;

trial {
	trial_duration = stimuli_length;
	sound K_uitleg_8; code = "K_uitleg_8";
};

trial {
	trial_type = specific_response;
	terminator_button = 3;
	picture {
		text {
		caption = "Wacht op trigger"; 
		font_size = 24;
   #preload = true;
		};
      x = 0; y = 0;
	};
	duration = target_response;
	target_button = 3;
} triggerTrial;

trial { 
	picture default;
};

# code nodig voor het geven van feedback
# ik denk dat het het handigst is om jouw oude taak te gebruiken voor de instructie en de oefentrials met feedback
# dan kunnen deze 2 trials weg



trial { 
	picture default;
};


#hieronder staan de benodigde trial arrays. Let op dat de volgorde voor elke array de triallist opmaakt!!!!
#alle arrays aanvullen met de stimulus lijst
#gebruik de vaste volgorde uit het excel bestand timing.xls
#array met alle 1e woorden
array{


trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
}stimuli11;



#array met alle 2e woorden van het 1e paar
array{
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
}stimuli12;



#array met alle 1e woorden van het 2e paar
array{
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
trial {sound broek;};
trial {sound rok;};
trial {sound hemd;};
trial {sound trui;};
}stimuli21;

#array met alle 2e woorden van het 2e paar
array{
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound geel;};
trial {sound groen;};
trial {sound rood;};
trial {sound blauw;};
trial {sound blauw;};
}stimuli22;

#array met alle trial codes bestaande uit eerstecombi_tweedecombi_cat_goede antwoord 
array{
trial{nothing{}; code="K_trubla_jasroo_gg_1";};
trial{nothing{}; code="K_brogee_vesgro_gf_2";};
trial{nothing{}; code="K_trugee_rokpaa_ff_1";};
trial{nothing{}; code="K_hembru_shibla_gf_2";};
trial{nothing{}; code="K_truroo_jasbla_ff_1";};
trial{nothing{}; code="K_shibla_hembru_fg_2";};
trial{nothing{}; code="K_jurgro_rokwit_gg_1";};
trial{nothing{}; code="K_hemgee_trubla_fg_2";};
trial{nothing{}; code="K_vesroo_brogro_ff_1";};
trial{nothing{}; code="K_rokroo_vespaa_fg_2";};
trial{nothing{}; code="K_shizwa_broge_gg_1";};
trial{nothing{}; code="K_brozwa_jurgro_fg_2";};
trial{nothing{}; code="K_vespaa_hembru_gg_1";};
trial{nothing{}; code="K_rokwit_trupaa_gf_2";};
trial{nothing{}; code="K_rokwit_trubla_gg_1";};
trial{nothing{}; code="K_brogee_shibru_gf_2";};
trial{nothing{}; code="K_truroo_rokwit_fg_2";};
trial{nothing{}; code="K_shiwit_hembla_ff_1";};
trial{nothing{}; code="K_brobru_jurgro_fg_2";};
trial{nothing{}; code="K_rokroo_brobru_ff_1";};
trial{nothing{}; code="K_trubla_rokpaa_gf_2";};
trial{nothing{}; code="K_hembla_jasgro_ff_1";};
trial{nothing{}; code="K_jurgro_brogee_gg_1";};
trial{nothing{}; code="K_shizwa_hemwit_gf_2";};
trial{nothing{}; code="K_brogee_jurbru_gf_2";};
trial{nothing{}; code="K_hembru_shizwa_gg_1";};
trial{nothing{}; code="K_jurzwa_trupaa_ff_1";};
trial{nothing{}; code="K_rokwit_jurgro_gg_1";};
trial{nothing{}; code="K_hemzwa_vespaa_fg_2";};
}trialcode;

# array met fillers
array{
trial {sound filler1;};
trial {sound filler2;};
}fillerTrials;

trial {
	trial_duration = stimuli_length;
	sound K_uitleg_9; code = "K_uitleg_9";
};

#trial {
	#sound einde; code = "einde";
#}eindeTrial;
