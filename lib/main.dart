import 'package:flutter/material.dart';
import 'package:prabidhi/awareness.dart';
import 'package:prabidhi/bolpatra.dart';
import 'package:prabidhi/business.dart';
import 'package:prabidhi/dharma.dart';
import 'package:prabidhi/digitalprofile.dart';
import 'package:prabidhi/disabled.dart';
import 'package:prabidhi/electricity.dart';
import 'package:prabidhi/gaunpalika_parichaya.dart';
import 'package:prabidhi/ghar.dart';
import 'package:prabidhi/ghardhuri.dart';
import 'package:prabidhi/ghardhurinum.dart';
import 'package:prabidhi/growth.dart';
import 'package:prabidhi/indhan.dart';
import 'package:prabidhi/jansankhya.dart';
import 'package:prabidhi/karyakram.dart';
import 'package:prabidhi/login.dart';
import 'package:prabidhi/matribhasa.dart';
import 'package:prabidhi/models/educationmodel.dart';
import 'package:prabidhi/page1_sewa.dart';
import 'package:prabidhi/page2_business.dart';
import 'package:prabidhi/page2_education.dart';
import 'package:prabidhi/page2_growth.dart';
import 'package:prabidhi/page2_other.dart';
import 'package:prabidhi/pani.dart';

import 'package:prabidhi/panji.dart';

import 'package:prabidhi/rajpatra.dart';
import 'package:prabidhi/register.dart';
import 'package:prabidhi/road.dart';
import 'package:prabidhi/sallah.dart';
import 'package:prabidhi/settings.dart';
import 'package:prabidhi/sewa.dart';
import 'package:prabidhi/suchana.dart';
import 'package:prabidhi/toilet.dart';
import 'package:prabidhi/tourist.dart';
import 'package:prabidhi/wada_jankari.dart';
import 'package:prabidhi/yogdan.dart';

import 'basai.dart';
import 'delivery.dart';
import 'education.dart';
import 'home.dart';
import 'hospital.dart';
import 'kar.dart';

import 'karyalaya.dart';
import 'loginhome.dart';
import 'nagariknew.dart';
import 'notifications.dart';
import 'other.dart';
import 'page1.dart';
import 'page2.dart';
import 'profile.dart';
import 'splashscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => const MyHomePage(),
      '/second': (context) => const SeventhScreen(),
      '/fourth': (context) => const EighthScreen(),

      '/sixth': (context) => const NinethScreen(),
      '/seventh': (context) => const NinethRoute(),
      '/eighth': (context) => const TenthScreen(),
      '/nineth': (context) => const TenthRoute(),
      '/tenth': (context) => const EleventhScreen(),
      '/eleventh': (context) => const EleventhRoute(),
      '/tweleventh': (context) => const TweleventhScreen(),
      '/thirteenth': (context) => const TweleventhRoute(),
      '/fourteenth': (context) => const ThirteenthScreen(),
      '/fifteenth': (context) => const ThirteenthRoute(),
      '/sixteenth': (context) => const FourteenthScreen(),
      '/seventeenth': (context) => const Page1(),
      '/eighteenth': (context) => const Page2(),
      '/nineteenth': (context) => const FourteenthRoute(),
      '/twenteenth': (context) => const FifteenthScreen(),
      '/twentyoneth': (context) => const FifteenthRoute(),
      '/twentytwoth': (context) => const SixteenthScreen(),
      '/twentyth': (context) => const SixteenthRoute(),
      '/twoyth': (context) => const SeventeenthScreen(),
      '/twth': (context) => const GraphScreen(),
      '/twthing': (context) => const FifthScreen(),
      '/onthing': (context) => const GharDhuri(),
      '/fnthing': (context) => const MatriBhasa(),
      '/line1': (context) => const Dharma(),
      '/line2': (context) => const Jansankhya(),
      '/line3': (context) => const Indhan(),
      '/line4': (context) => const Pani(),
      '/line5': (context) => const Toilet(),
      '/line6': (context) => const Disabled(),
      '/line7': (context) => const Awareness(),
      '/line8': (context) => const Road(),
      '/line9': (context) => const Growth(),
      '/line10': (context) => const Electricity(),
      '/line11': (context) => const SixthScreen(),
      '/line12': (context) => const SixthRoute(),
      '/line13': (context) => const FifthRoute(),
      '/line14': (context) => const Hospital(),
      '/line15': (context) => const Karyalaya(),
      '/line16': (context) => const PEducation(),
      '/line17': (context) => const Others(),
      '/line18': (context) => const Bolpatra(),
      '/line19': (context) => const Tourist(),
      '/line20': (context) => const PBusiness(),
      '/line21': (context) => const PGrowth(),
      '/line22': (context) => const Delivery(),
      '/line23': (context) => const Karyakram(),
      '/line24': (context) => const PSewa()
    },
  ));
}
