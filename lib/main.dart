import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_managemet/screen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

int introduction = 0;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();  
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );
  initIntroduction();
  runApp(const MyApp());
}

Future initIntroduction() async {
  final prefs = await SharedPreferences.getInstance();

  int? intro = prefs.getInt('introduction');
  print('intro : $intro');
  if (intro != null && intro == 1) {
    return introduction = 1;
  }
  prefs.setInt('introduction', 1);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PRORIATY',
      home: SplashScreenPage(),
    );
  }
}