import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constrance.dart';

class AlgalSpotScreen extends StatefulWidget {
  const AlgalSpotScreen({Key key}) : super(key: key);

  @override
  State<AlgalSpotScreen> createState() => _AlgalSpotScreenState();
}

class _AlgalSpotScreenState extends State<AlgalSpotScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            height: size.height * 0.4 - 50,
            child: Stack(
              children: <Widget>[
                Container(
                  height: size.height * 0.4 - -50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/disease/disease-image-header/1.jpg'),fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
