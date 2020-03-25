import 'package:flaschat/models/user.dart';
import 'package:flaschat/screens/chat_screen.dart';
import 'package:flaschat/screens/login_screen.dart';
import 'package:flaschat/screens/registration_screen.dart';
import 'package:flaschat/screens/welcome_screen.dart';
import 'package:flaschat/screens/wrapper.dart';
import 'package:flaschat/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Dart Chat",
        theme: ThemeData.dark(),
//            .copyWith(
//    textTheme: TextTheme(
//    body1: TextStyle(color: Colors.black54),
//    ),
//    ),
        initialRoute: Wrapper.id,
        routes: {
          Wrapper.id: (context) => Wrapper(),
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          ChatScreen.id: (context) => ChatScreen(),
        },
      ),
    );
  }
}
