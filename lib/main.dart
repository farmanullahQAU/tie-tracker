import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tie_tracker/constants.dart';
import 'package:tie_tracker/pages.dart';
import 'package:tie_tracker/route_names.dart';

import 'binder.dart';
import 'screens/home/home.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Self());
}

class Self extends StatelessWidget {
  const Self({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //   darkTheme: ThemeData.dark(),
      //  themeMode: ThemeMode.system,

      initialBinding: Binder(),
      title: "Tie Tracker",

      initialRoute: RouteNames.SPLASH,
      getPages: pages,
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      theme: ThemeData(

          // outlinedButtonTheme:OutlinedButtonThemeData(

          //   style: OutlinedButton.styleFrom(
          //     primary: Colors.white,
          //     textStyle: TextStyle(color: Colors.white),

          //       padding:EdgeInsets.symmetric(vertical: 15),
          //       shape:   RoundedRectangleBorder(
          //         borderRadius: new BorderRadius.circular(10.0),
          //       ),)

          // ) ,
          // inputDecorationTheme: InputDecorationTheme(

          //   contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
          //   filled: true,
          //   fillColor: Colors.transparent,
          //   labelStyle: TextStyle(fontSize: 17),
          //   // border: InputBorder.none,
          //   focusedBorder: OutlineInputBorder(
          //     borderSide: new BorderSide(color: StyleText.kGrey,width: 1.5),
          //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //   ),
          //   enabledBorder: OutlineInputBorder(
          //       borderSide: new BorderSide(color: StyleText.kGrey,width: 1.5),
          //       borderRadius: BorderRadius.circular(10)
          //   ),

          //   hintStyle: TextStyle(color: Colors.grey),
          // ),
          //  scaffoldBackgroundColor:homeScaffoldColor,

        elevatedButtonTheme: ElevatedButtonThemeData(
          
          
          style:   
    ButtonStyle(
      
      backgroundColor: MaterialStateProperty.all(homeScaffoldColor)), ),
          appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(fontFamily: 'Verdana'),
        centerTitle: true,
        backgroundColor: homeScaffoldColor,
      )),

      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: Image.asset('images/logo.png'),
        duration: 2000,
        splashIconSize: 200,
        nextScreen: HomeView());
  }
}
