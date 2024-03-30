import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vcet_kart/screens/authentication/phoneauth_screen.dart';
import 'package:vcet_kart/screens/login_screen.dart';
import 'package:vcet_kart/screens/splash_screen.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(Duration(seconds: 3)),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                    primaryColor: Colors.cyan.shade900,
                    fontFamily: 'Lato'
                ),
                home: SplashScreen());
          } else {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primaryColor: Colors.cyan.shade900,
                fontFamily: 'Lato'
              ),
              home : LoginScreen(),
              routes:{
                LoginScreen.id: (context) =>  LoginScreen(),
                PhoneAuthScreen.id: (context) => PhoneAuthScreen(),
              },
            );
          }
        });
  }
}
