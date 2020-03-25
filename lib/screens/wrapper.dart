import 'package:flaschat/models/user.dart';
import 'package:flaschat/screens/chat_screen.dart';
import 'package:flaschat/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {

  static const String id = "wrapper_screen";

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
//    print(user);

    //return either home or authenticate widget
    if (user == null) {
      return WelcomeScreen();
    } else {
      return ChatScreen();
    }
  }
}
