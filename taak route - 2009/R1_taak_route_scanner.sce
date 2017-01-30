pcl_file = "route_marijn.pcl";
scenario = "Route taak";

active_buttons = 3;
#hieronder geef je aan wat de codes zijn voor de response-knoppen
# 0,1 verwijst naar de knoppenkast, de meest linkse en meest rechtse
# 3 is voor de trigger van de scanner
button_codes = 1,2,3;
response_matching = simple_matching;


begin;

picture {} default;
#hieronder noem je alle geluidsstimuli die je nodig hebt in het hele experiment.
sound {wavefile {filename = "startsignaal.wav"; }; }beep;
sound {wavefile {filename = "beepfil.wav"; }; }beepFil; 
sound {wavefile {filename = "goed.wav"; }; }goed;
sound {wavefile {filename = "fout.wav"; }; }fout;
#stimuli trials

sound {wavefile {filename = "hyenasN.wav";  }; }hyenas;
sound {wavefile {filename = "ijsberenN.wav"; }; }ijsberen;
sound {wavefile {filename = "giraffen2.wav"; }; }giraffen; #giraffen2.wav bestaat niet
sound {wavefile {filename = "olifantenN.wav"; }; }olifanten;
sound {wavefile {filename = "filler1R.wav"; }; }filler1;	 
sound {wavefile {filename = "filler2R.wav"; }; }filler2;	 
	 

#instructie
#instructie
sound {wavefile {filename = "R1_uitleg_6.wav"; }; }R1_uitleg_6;	 
sound {wavefile {filename = "R1_uitleg_7.wav"; }; }R1_uitleg_7;	 

trial {
	trial_duration = stimuli_length;
   sound R1_uitleg_6; code = "R1_uitleg_6";
	nothing {}; delta_time = 1500;
};

trial {
  stimulus_event{
  nothing{};
  code = "";
  }response_stim;   
} responseTrial;

text {
   caption = "Begin experiment"; 
   font_size = 24;
   preload = true;
} text1;

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


#hieronder staan de benodigde trial arrays. Let op dat de volgorde voor elke array de triallist opmaakt!!!!
#alle arrays aanvullen met de stimulus lijst
#gebruik de vaste volgorde uit het excel bestand timing.xls
#array met alle 1e woorden
array{
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
}stimuli1;


#array met alle 2e woorden van het 1e paar
array{
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
}stimuli12;


#array met alle 2e woorden van het 2e paar
array{
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound hyenas;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound olifanten;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound giraffen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
trial {sound ijsberen;};
}stimuli22;


#array met alle trial codes bestaande uit cijfercode_ratio_goede antwoord 
#(evt+c als de antwoorden voor route en survey voor deze paren anders zijn)
array{
trial{nothing{}; code="R_3736_1_0_n";};
trial{nothing{}; code="R_8584_1_0_n";};
trial{nothing{}; code="R_5652_4_0_c";};
trial{nothing{}; code="R_3135_5_1_n";};
trial{nothing{}; code="R_1517_2_2_n";};
trial{nothing{}; code="R_5852_2_2_n";};
trial{nothing{}; code="R_1312_1_1_c";};
trial{nothing{}; code="R_7475_1_2_n";};
trial{nothing{}; code="R_5158_2_1_c";};
trial{nothing{}; code="R_7872_2_2_c";};
trial{nothing{}; code="R_3136_4_1_n";};
trial{nothing{}; code="R_8581_3_1_c";};
trial{nothing{}; code="R_4748_1_1_n";};
trial{nothing{}; code="R_7374_1_2_n";};
trial{nothing{}; code="R_6461_2_1_n";};
trial{nothing{}; code="R_7274_2_2_c";};
trial{nothing{}; code="R_5157_3_1_c";};
trial{nothing{}; code="R_4642_4_2_n";};
trial{nothing{}; code="R_6361_1_1_n";};
trial{nothing{}; code="R_4342_1_1_n";};
trial{nothing{}; code="R_4648_2_2_c";};
trial{nothing{}; code="R_2628_2_2_n";};
trial{nothing{}; code="R_4347_4_1_c";};
trial{nothing{}; code="R_7175_3_2_n";};
trial{nothing{}; code="R_4647_1_2_c";};
trial{nothing{}; code="R_6263_1_2_c";};
trial{nothing{}; code="R_8783_4_1_n";};
trial{nothing{}; code="R_2428_4_2_n";};
trial{nothing{}; code="R_5658_2_2_c";};
trial{nothing{}; code="R_1412_2_1_c";};
trial{nothing{}; code="R_3237_3_1_n";};
trial{nothing{}; code="R_5651_4_2_c";};
trial{nothing{}; code="R_3831_2_2_n";};
trial{nothing{}; code="R_1415_1_2_c";};
trial{nothing{}; code="R_3632_4_2_n";};
trial{nothing{}; code="R_1612_4_1_c";};
}trialcode;

# array met fillers
array{
trial {sound filler1;};
trial {sound filler2;};
trial {sound filler2;};
trial {sound filler1;};
trial {sound filler1;};
trial {sound filler2;};
trial {sound filler1;};
trial {sound filler2;};
trial {sound filler2;};
trial {sound filler1;};
trial {sound filler1;};
trial {sound filler2;};
}fillerTrials;

trial {
	trial_duration = stimuli_length;
   sound R1_uitleg_7; code = "R1_uitleg_7";
	nothing {}; delta_time = 10;
};


trial { 
	picture default;
};
