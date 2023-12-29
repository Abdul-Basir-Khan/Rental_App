import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rental/Screens/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]
  );
  //SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor:Colors.transparent));
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen() ,
    );
  }
}
