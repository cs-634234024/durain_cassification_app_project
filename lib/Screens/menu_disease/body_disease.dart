import 'package:flutter/material.dart';
import 'package:skincacer_project_final/Screens/menu/manual_screen.dart';
import 'package:skincacer_project_final/Screens/menu_disease/algal_spot_body.dart';
import 'package:skincacer_project_final/Screens/predictions_screen.dart';

import '../../constrance.dart';


class BodyDisease extends StatelessWidget {
  final int index;
   BodyDisease({Key key, this.index}) : super(key: key);

  int newindex = 0;

  changeBody() {
    newindex = index;
    if (newindex == 1) {
      print("success");
      return const AlgalSpotBody(
        title: "text1",
      );
    } else if (newindex == 2) {
      // return const Testwidgets(
      // );
    } else if (newindex == 3) {
      // return const AlgalSpotBody(
      //   title: "text3",
      // );
    } else {
      // return const AlgalSpotBody(
      //   title: "text4",
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kbackgroundColor,
        ),
        body: changeBody());
  }
}

