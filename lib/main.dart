import 'package:flutter/material.dart';
import 'package:bmi/screens/home_page.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value)=>
    runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color.fromARGB(255, 17, 22, 48),
        scaffoldBackgroundColor: const Color.fromARGB(255, 8, 13, 39),
        textTheme: ThemeData.dark().textTheme.apply(
        fontFamily: GoogleFonts.abel().fontFamily,),

      ),

      home: const InputPage(),
    );
  }
}
