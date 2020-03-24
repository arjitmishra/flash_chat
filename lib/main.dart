import 'package:flaschat/screens/chat_screen.dart';
import 'package:flaschat/screens/login_screen.dart';
import 'package:flaschat/screens/registration_screen.dart';
import 'package:flaschat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flop Chat",
      theme: ThemeData.dark(),
//            .copyWith(
//    textTheme: TextTheme(
//    body1: TextStyle(color: Colors.black54),
//    ),
//    ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
