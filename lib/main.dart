import 'package:booktickets/screens/bottom_bar.dart';
import 'package:booktickets/theme/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

///we are declaring a global key for our navigation and using it for accessing the current BuildContext
//since its declared outside the class it could be accessed from everywhere in the app
GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        //we bind our navigator global key so we can access it everywhere in our app
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'Ticket booking app',
        theme: ThemeData(primaryColor: primary),
        home: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark),
            child: BottomBar()));
  }
}
