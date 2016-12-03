.stations {
  [railway = 'subway_entrance'][zoom >= 18] {
    point-file: url('symbols/walking.n.12.png');
    point-placement: interior;
  }

  [railway = 'station'] {
  	[zoom >= 12] {
    point-file: url('symbols/halt.png');
    point-placement: interior;

    [zoom >= 13] {
      point-file: url('symbols/station_small.png');
    }

    [zoom >= 14] {
      text-name: "[name]";
      text-face-name: @bold-fonts;
      text-size: 9;
      text-fill: #66f;
      text-dy: -8;
      text-halo-radius: 1;
      text-wrap-width: 50;
      text-placement: interior;
      [disused = 'yes'] { text-name: ""; }
    }

/* logos spécifiques aux réseaux et opérateurs */

    [zoom >= 11] [operator = 'SNCF'][type_ratp = ''][usage!='freight'] {
      point-file: url('symbols/fr/Logo_SNCF.svg');
      point-transform: 'scale(0.10)';
      [zoom>=14] { point-transform: 'scale(0.15)'; }
      [disused = 'yes'] { point-file: url('symbols/station_disused.png'); point-transform: 'scale(1)';}
    }

    [zoom >= 13] {
    	[type_ratp = 'rer'],
    	[type_ratp = 'metro;rer'],
		[type_ratp = 'rer;metro'] {
      		point-file: url('symbols/fr/logo-ratp-rer.svg');
      		point-transform: 'scale(0.04)';
		}
	}

    [zoom >= 14] [operator = 'SNCF'] {
      text-name: "[name]";
      text-face-name: @bold-fonts;
      text-fill: #66f;
      text-halo-radius: 1;
      text-wrap-width: 0;
      text-placement: interior;
      text-size: 12;
      text-dy: 10;
      [disused = 'yes'] { text-name: ""; }
    }
    [zoom >= 14] {
		[l_operator = 'STAR']{
    		point-file: url('symbols/fr/metro_rennes.png');
    		text-size: 9;
    		text-dy: -14;
   		}
 		[l_operator = 'Tisséo']{
    		point-file: url('symbols/fr/toulouse_metro.png');
    		text-size: 9;
    		text-dy: 14;
   		}
 		[l_operator = 'Transpole']{
    		point-file: url('symbols/fr/Lille_Metro_Logo.png');
    		text-size: 9;
    		text-dy: 14;
   		}
    	[l_operator = 'TCL'],[network='TCL']{
    		[l_ref1 = 'F'] {point-file: url('symbols/fr/tcl-funi.png');}
    		point-file: url('symbols/fr/tcl-metro.png');
    		text-size: 9;
    		text-dy: 10;
    	}
   		[type_ratp = 'rer'],
    	[type_ratp = 'metro;rer'],
		[type_ratp = 'rer;metro'] {
   	 		text-size: 10;
   	 		text-dy: 12;
   		}

   		[type_ratp = 'metro']{
   	 		point-file: url('symbols/fr/logo-ratp-metro.svg');
   	 		point-transform: 'scale(0.04)';
   	 		text-size: 9;
   	 		text-dy: 12;
   		}
    }

    [zoom >= 15] {
      point-file: url('symbols/station.png');
      [disused = 'yes'] { point-file: url('symbols/station_disused.png'); }
      text-size: 11;
      text-dy: -10;
    }
    /*
    [disused = 'yes'] {
      point-file: url('symbols/station_disused.png'); // 14 and above
      text-fill: grey; // 15 and above, small version only
    }
    */
  }
  }

  [railway = 'halt'],
  [railway = 'tram_stop'],
  [aerialway = 'station']::aerialway {
    [zoom >= 13] {
      point-file: url('symbols/halt.png');
    }
    [zoom >= 15] {
      point-file: url('symbols/station_small.png');
    }
    [zoom >= 14] {
      [zoom>=16][aerialway!=''][ele!=''] {
      	[name!=''] { text-name: [name]+'\n'+[ele]; }
      	text-name: [ele];
      }
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-size: 8;
      text-fill: #66f;
      text-dy: -8;
      text-halo-radius: 1;
      text-wrap-width: 0;
      text-placement: interior;
      [zoom >= 15] {
        text-size: 10;
        text-dy: -10;
      }
    }
    [zoom >= 15] {
    	[l_operator = 'TCL'],[network='TCL']{
    	  point-file: url('symbols/fr/tcl-tram.png');
    	  text-size: 9;
    	  text-dy: 12;
    	}

    	[type_ratp = 'tram']{
			point-file: url('symbols/fr/logo-ratp-tram.svg');
   	 		point-transform: 'scale(0.04)';
    		text-size: 9;
    		text-dy: 10;
    	}

 		[operator = 'Viacités'],
 		[l_operator = 'Viacités']{
    		point-file: url('symbols/fr/Twisto_Logo.png');
    		text-size: 9;
    		text-dy: 10;
    		text-face-name: @bold-fonts;
   		}
   	}
  }


  [amenity = 'bus_station'][zoom >= 16]::amenity {
    [zoom >= 17] {
    	[type_ratp = 'bus'],[operator='RATP'],[l_operator='RATP'] {
   	 		point-file: url('symbols/fr/logo-ratp-bus.svg');
   	 		point-transform: 'scale(0.06)';
      	}
 		[l_operator = 'TCL'],[network='TCL']{
    	  point-file: url('symbols/fr/tcl-bus.png');
   		}
 		[l_operator = 'STAR']{
    		point-file: url('symbols/fr/rennes_bus.png');
   		}
		[operator = 'Optymo'],
		[l_operator = 'Optymo'],
		[network = 'Optymo']{
			point-file: url('symbols/fr/bus-belfort-optymo.png');
		}
		point-file: url('symbols/bus_stop.svg');
    }

    [type_ratp = 'bus'],[operator='RATP'],[l_operator = 'RATP'] {
   	 	point-file: url('symbols/fr/logo-ratp-bus.svg');
   	 	point-transform: 'scale(0.04)';
    }
    point-file: url('symbols/bus_station.svg');
    point-placement: interior;
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 9;
      text-fill: #0066ff;
      text-dy: 9;
      text-face-name: @book-fonts;
      text-halo-radius: 1;
    }
  }


}
