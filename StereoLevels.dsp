declare name        "StereoLevels";
declare version 	"1.1";
declare author 		"Vincent Rateau";
declare license 	"GPL v2";

//this plugin is based on the faust plugin "SimpleAmp" by Harry van Haaren, but with 2 inputs and 2 outputs.

import("stdfaust.lib"); // for smooth()

amp = hslider("[1]L", 1, 0, 1, 0.001) : si.smooth(0.999);
amp2 = hslider("[2]R", 1, 0, 1, 0.001) : si.smooth(0.999);


a1 = _ * amp :  _ ;
a2 = _ * amp2 :  _ ;

process = a1 , a2;
