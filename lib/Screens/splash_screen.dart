import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import '../constrance.dart';
import '../home.dart';

class MySplash extends StatefulWidget {
  const MySplash({Key key}) : super(key: key);

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: const Home(),
      title: const Text('Leaf Durain',
          style: TextStyle(
              fontFamily: 'Taitham3',
              color: Colors.white,
              fontSize: 45,
              fontWeight: FontWeight.bold)),
      image: Image.asset('assets/logo/leaf-logo.png'),
      backgroundColor: kbackground_splashColor, 
      photoSize: 85,
      loaderColor: Colors.white,
      loadingText: const Text(
        'กำลังโหลด',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
