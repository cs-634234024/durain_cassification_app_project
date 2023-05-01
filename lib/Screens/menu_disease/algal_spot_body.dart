import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  int imagesindex = 1;
  int buttonindex = 0;

  void changeIndex(int index) {
    setState(() {
      imagesindex = index;
    });
  }

  void changebuttonColor(int index) {
    setState(() {
      buttonindex = index;
      print(buttonindex);
    });
  }

  List<String> imagescard = [
    'assets/images/disease/menu1.png',
    'assets/images/disease/menu2.png'
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: kbackgroundColor),
                        borderRadius: BorderRadius.circular(80)),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Image.asset(
                            'assets/images/disease/disease-image-header/virus.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'algal spot',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 7,
                left: 16,
              ),
              child: Container(
                  width: size.width - 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white54),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.virus,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'ลักษณะใบที่เป็นโรคจุดสาหร่าย',
                          style: TextStyle(
                              fontSize: 16,
                              color: kbottomColor,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
            ),
            Container(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildCardImages(
                    index: 1,
                    images: imagescard[0],
                    onclick: changeIndex,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  buildCardImages(
                    index: 2,
                    images: imagescard[0],
                    onclick: changeIndex,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  buildCardImages(
                    index: 3,
                    images: imagescard[1],
                    onclick: changeIndex,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  buildCardImages(
                    index: 4,
                    images: imagescard[0],
                    onclick: changeIndex,
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: GestureDetector(
                    onTap: () => changeIndex(1),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: imagesindex == 1
                              ? Colors.black45
                              : Colors.black12,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: GestureDetector(
                    onTap: () => changeIndex(2),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: imagesindex == 2
                              ? Colors.black45
                              : Colors.black12,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: GestureDetector(
                    onTap: () => changeIndex(2),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: imagesindex == 3
                              ? Colors.black45
                              : Colors.black12,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: GestureDetector(
                    onTap: () => changeIndex(2),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: imagesindex == 4
                              ? Colors.black45
                              : Colors.black12,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                    width: size.width,
                    height: size.height - 300,
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
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buttonindex == 1
                                ? buttonWidget(
                                    border: Border.all(color: Colors.black),
                                    icon: FaIcon(FontAwesomeIcons.virus),
                                    index: 1,
                                    onclick: changebuttonColor,
                                    title: 'ลักษณะของโรค',
                                    colors: Colors.white,
                                  )
                                : buttonWidget(
                                    border: Border.all(color: Colors.white),
                                    icon: FaIcon(FontAwesomeIcons.virus),
                                    index: 1,
                                    onclick: changebuttonColor,
                                    title: 'ลักษณะของโรค',
                                    colors: Colors.white,
                                  ),
                            buttonindex == 2
                                ? buttonWidget(
                                    border: Border.all(color: Colors.black),
                                    icon: FaIcon(FontAwesomeIcons.book),
                                    index: 2,
                                    onclick: changebuttonColor,
                                    title: 'วิธีการรักษา',
                                     colors: Colors.white,
                                  )
                                : buttonWidget(
                                    border: Border.all(color: Colors.white),
                                    icon: FaIcon(FontAwesomeIcons.book),
                                    index: 2,
                                    onclick: changebuttonColor,
                                    title: 'วิธีการรักษา',
                                     colors: Colors.white,
                                  ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 145,
                                height: 4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: buttonindex == 1 ? Colors.black26 : Colors.white),
                              ),
                            ),
                            SizedBox(width: 55),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 120,
                                height: 4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: buttonindex == 2 ? Colors.black26 : Colors.white),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 5, bottom: 5),
                          child: Container(
                            width: size.width,
                            height: size.height - 414,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        )
                      ],
                    ))),
          ],
        ),
      ],
    );
  }
}

class buttonWidget extends StatelessWidget {
  final Function onclick;
  final int index;
  final Border border;
  final FaIcon icon;
  final String title;
  final Color colors;

  const buttonWidget({
    Key key,
    this.onclick,
    this.index,
    this.icon,
    this.title,
    this.border,
    this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:16 , right: 16, top: 16),
      child: GestureDetector(
        onTap: () => onclick(index),
        child: Container(
          width: 160,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: colors),
          child: Row(
            mainAxisAlignment:  MainAxisAlignment.center,
            children: [
              icon,
              SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class buildCardImages extends StatelessWidget {
  final int index;
  final String images;
  final Function onclick;
  const buildCardImages({
    Key key,
    this.index,
    this.images,
    this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onclick(index),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (Container(
          width: 350,
          height: 250,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white54),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(images),
          ),
        )),
      ),
    );
  }
}
