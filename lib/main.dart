import 'package:application2_app/pages/home.dart';
import 'package:application2_app/pages/login_page.dart';
import 'package:application2_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(Home());
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      
      themeMode: ThemeMode.light,
      theme:ThemeData(primarySwatch:Colors.deepPurple,
      primaryTextTheme:GoogleFonts.latoTextTheme() ),
      darkTheme: ThemeData(
        // brightness: Brightness.dark
        primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        initialRoute: MyROutes.HomeROute,
        routes: {
          "/":(context) => login_page(),
          MyROutes.HomeROute:(context) => home(),
           MyROutes.loginRoute :(context)=>login_page(),
        },
        );
      
  }
}


