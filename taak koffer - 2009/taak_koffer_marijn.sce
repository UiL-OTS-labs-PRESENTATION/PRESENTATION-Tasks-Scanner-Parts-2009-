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

# 1 Algemene uitleg taak 

#trial {
#sound introoefen; code = "introoefen";
#};

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
trial {sound vest;};
trial {sound rok;};
trial {sound jas;};
trial {sound rok;};
trial {sound vest;};
trial {sound broek;};
trial {sound shirt;};
trial {sound broek;};
trial {sound trui;};
trial {sound jas;};
trial {sound vest;};
trial {sound jurk;};
trial {sound shirt;};
trial {sound trui;};
trial {sound hemd;};
trial {sound broek;};
trial {sound hemd;};
trial {sound vest;};
trial {sound vest;};
trial {sound jurk;};
trial {sound shirt;};
trial {sound jas;};
trial {sound trui;};
trial {sound broek;};
trial {sound shirt;};
trial {sound trui;};
trial {sound jurk;};
trial {sound trui;};
trial {sound jurk;};
trial {sound hemd;};
trial {sound shirt;};
trial {sound trui;};
trial {sound trui;};
trial {sound jurk;};
trial {sound jurk;};
trial {sound hemd;};
}stimuli11;


#array met alle 2e woorden van het 1e paar
array{
trial {sound paars;};
trial {sound zwart;};
trial {sound rood;};
trial {sound groen;};
trial {sound groen;};
trial {sound paars;};
trial {sound zwart;};
trial {sound geel;};
trial {sound blauw;};
trial {sound geel;};
trial {sound zwart;};
trial {sound groen;};
trial {sound zwart;};
trial {sound blauw;};
trial {sound bruin;};
trial {sound groen;};
trial {sound wit;};
trial {sound paars;};
trial {sound wit;};
trial {sound groen;};
trial {sound blauw;};
trial {sound rood;};
trial {sound bruin;};
trial {sound wit;};
trial {sound zwart;};
trial {sound blauw;};
trial {sound rood;};
trial {sound blauw;};
trial {sound zwart;};
trial {sound geel;};
trial {sound zwart;};
trial {sound paars;};
trial {sound blauw;};
trial {sound paars;};
trial {sound groen;};
trial {sound bruin;};
}stimuli12;


#array met alle 1e woorden van het 2e paar
array{
trial {sound trui;};
trial {sound broek;};
trial {sound shirt;};
trial {sound vest;};
trial {sound hemd;};
trial {sound jas;};
trial {sound hemd;};
trial {sound jas;};
trial {sound shirt;};
trial {sound vest;};
trial {sound hemd;};
trial {sound rok;};
trial {sound vest;};
trial {sound broek;};
trial {sound rok;};
trial {sound rok;};
trial {sound jurk;};
trial {sound broek;};
trial {sound hemd;};
trial {sound rok;};
trial {sound broek;};
trial {sound hemd;};
trial {sound jas;};
trial {sound jas;};
trial {sound trui;};
trial {sound vest;};
trial {sound vest;};
trial {sound jas;};
trial {sound broek;};
trial {sound jas;};
trial {sound rok;};
trial {sound shirt;};
trial {sound shirt;};
trial {sound rok;};
trial {sound rok;};
trial {sound jurk;};
}stimuli21;

#array met alle 2e woorden van het 2e paar
array{
trial {sound blauw;};
trial {sound geel;};
trial {sound geel;};
trial {sound blauw;};
trial {sound bruin;};
trial {sound geel;};
trial {sound rood;};
trial {sound rood;};
trial {sound bruin;};
trial {sound rood;};
trial {sound bruin;};
trial {sound bruin;};
trial {sound paars;};
trial {sound zwart;};
trial {sound wit;};
trial {sound wit;};
trial {sound paars;};
trial {sound geel;};
trial {sound bruin;};
trial {sound rood;};
trial {sound groen;};
trial {sound paars;};
trial {sound wit;};
trial {sound blauw;};
trial {sound geel;};
trial {sound paars;};
trial {sound groen;};
trial {sound rood;};
trial {sound geel;};
trial {sound rood;};
trial {sound wit;};
trial {sound bruin;};
trial {sound zwart;};
trial {sound wit;};
trial {sound rood;};
trial {sound groen;};
}stimuli22;

#array met alle trial codes bestaande uit eerstecombi_tweedecombi_cat_goede antwoord 
array{
trial{nothing{}; code="vepa_trbl_4_1";};
trial{nothing{}; code="rokzw_broge_3_2";};
trial{nothing{}; code="jaroo_shge_2_2";};
trial{nothing{}; code="rokgr_vebl_1_1";};
trial{nothing{}; code="vegr_hebru_3_2";};
trial{nothing{}; code="bropa_jage_1_1";};
trial{nothing{}; code="shzw_heroo_2_2";};
trial{nothing{}; code="broge_jaroo_4_1";};
trial{nothing{}; code="trbl_shbru_2_2";};
trial{nothing{}; code="jage_veroo_1_1";};
trial{nothing{}; code="vezw_hebru_3_2";};
trial{nothing{}; code="jugr_rokbru_2_2";};
trial{nothing{}; code="shzw_vepa_4_1";};
trial{nothing{}; code="trbl_brozw_2_2";};
trial{nothing{}; code="hebru_rokwi_4_1";};
trial{nothing{}; code="brogr_rokwi_3_2";};
trial{nothing{}; code="hewi_jupa_1_1";};
trial{nothing{}; code="vepa_broge_4_1";};
trial{nothing{}; code="vewi_hebru_3_2";};
trial{nothing{}; code="jugr_rokroo_2_2";};
trial{nothing{}; code="shbl_brogr_1_1";};
trial{nothing{}; code="jaroo_hepa_2_2";};
trial{nothing{}; code="trbru_jawi_1_1";};
trial{nothing{}; code="browi_jabl_1_1";};
trial{nothing{}; code="shzw_trge_2_2";};
trial{nothing{}; code="trbl_vepa_3_2";};
trial{nothing{}; code="juroo_vegr_1_1";};
trial{nothing{}; code="trbl_jaroo_4_1";};
trial{nothing{}; code="juzw_broge_3_2";};
trial{nothing{}; code="hege_jaroo_3_2";};
trial{nothing{}; code="shzw_rokwi_4_1";};
trial{nothing{}; code="trpa_shbru_1_";};
trial{nothing{}; code="trbl_shzw_4_1";};
trial{nothing{}; code="jupa_rokwi_3_2";};
trial{nothing{}; code="jugr_rokroo_2_2";};
trial{nothing{}; code="hebru_jugr_4_1";};
}trialcode;

# array met fillers
array{
trial {sound filler1;};
trial {sound filler2;};
trial {sound filler3;};
trial {sound filler4;};
trial {sound filler5;};
trial {sound filler6;};
trial {sound filler7;};
trial {sound filler8;};
trial {sound filler9;};
trial {sound filler10;};
trial {sound filler11;};
trial {sound filler12;};
}fillerTrials;

#trial {
	#sound einde; code = "einde";
#}eindeTrial;
