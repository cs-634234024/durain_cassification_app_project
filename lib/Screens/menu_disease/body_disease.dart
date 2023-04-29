import 'package:flutter/material.dart';
import 'package:skincacer_project_final/Screens/menu/manual_screen.dart';
import 'package:skincacer_project_final/Screens/predictions_screen.dart';

import '../../constrance.dart';

class BodyDisease extends StatefulWidget {
  final int index;
  const BodyDisease({Key key, this.index}) : super(key: key);

  @override
  State<BodyDisease> createState() => _BodyDiseaseState();
}

class _BodyDiseaseState extends State<BodyDisease> {
  int newindex = 0;

  changeBody() {
    newindex = widget.index;
    if (newindex == 1) {
      print("success");
      return const ListContainer(
        title: "text1",
      );
    } else if (newindex == 2) {
      return const ListContainer(
        title: "text2",
      );
    } else if (newindex == 3) {
      return const ListContainer(
        title: "text3",
      );
    } else {
      return const ListContainer(
        title: "text4",
      );
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

class ListContainer extends StatelessWidget {
  final String title;
  const ListContainer({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int imagesindex = 0 ;

    void changeIndex (index){
      imagesindex = index ; 

    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: kbackgroundColorGreen),
            child: Text("โรคใบจุดสาหร่าย"),
          ),
        ),
        Container(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              buildCardImages(index: 1,),
              SizedBox(
                width: 20,
              ),
              buildCardImages(index: 2,),
              SizedBox(
                width: 20,
              ),
              buildCardImages(index: 3,),
              SizedBox(
                width: 20,
              ),
              buildCardImages(index: 4,)
            ],
          ),
        ),
        
        SizedBox(
          height: 10,
        ),
        Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Container(
              width: size.width,
              height: size.height-407,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(20)),
            ))
      ],
    );
  }
}


class buildCardImages extends StatelessWidget {
  final int index;
  const buildCardImages({
    Key key, this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child:
          (Container(
            width: 350,
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: kbackgroundColorGreen),
          )
          ),
          
      );
  }}