import 'package:flutter/material.dart';
import 'package:my_profile/controllers/menu_controller.dart';
import 'package:my_profile/screens/main/main_home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MenuController(),
        )
      ],
      child: MaterialApp(
        title: 'Arif Surahman | Profile',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color.fromARGB(255, 192, 213, 248),
          textTheme: GoogleFonts.hindSiliguriTextTheme(),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
