import 'package:flutter/material.dart';

import '../../constrance.dart';

class AlgalSpotBody extends StatefulWidget {
  final String title;
  const AlgalSpotBody({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  State<AlgalSpotBody> createState() => _AlgalSpotBodyState();
}

class _AlgalSpotBodyState extends State<AlgalSpotBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int imagesindex = 0;
    int indexchangecolor = 1;
    int testindex = 0;

    void changeIndex(int index) {
      imagesindex = index;
    }

    void changeColorBottom(int index) {
      setState(() {
        indexchangecolor = index;
        print(indexchangecolor);
      });
    }

    void setindex(index) {
      setState(() {
        testindex = index;
        testindex + 1;
        print(testindex);
      });
    }

    List<String> imagescard = [
      'assets/images/disease/menu1.png',
      'assets/images/disease/menu2.png'
    ];

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
              buildCardImages(
                index: 1,
                images: imagescard[0],
              ),
              SizedBox(
                width: 20,
              ),
              buildCardImages(index: 2, images: imagescard[0]),
              SizedBox(
                width: 20,
              ),
              buildCardImages(index: 3, images: imagescard[1]),
              SizedBox(
                width: 20,
              ),
              buildCardImages(index: 4, images: imagescard[0])
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
                height: size.height - 407,
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
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          
                          ]
                      ),
                    ),
                  ),
                ]))),
      ],
    );
  }
}


class buildCardImages extends StatelessWidget {
  final int index;
  final String images;
  const buildCardImages({
    Key key,
    this.index,
    this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: (Container(
        width: 350,
        height: 250,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green) ,
            borderRadius: BorderRadius.circular(20),
            color: kbackgroundColorGreen),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset(images),
        ),
      )),
    );
  }
}
