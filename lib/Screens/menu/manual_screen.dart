// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:skincacer_project_final/Screens/menu_disease/algal_spot_screen.dart';

import '../../constrance.dart';

class ManualScreen extends StatefulWidget {
  const ManualScreen({Key key}) : super(key: key);

  @override
  State<ManualScreen> createState() => _ManualScreenState();
}

class _ManualScreenState extends State<ManualScreen> {
  TextStyle headerstyle =
      TextStyle(fontSize: 16, color: Colors.black, fontFamily: "Taitham3");

  int indexbutton = 0;

  void changeButton(int index) {
    setState(() {
      indexbutton = index;
      print(indexbutton);
    });
  }

  void pushMenu(index) {
    if (index == 1) {
      Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlgalSpotScreen(),
                  ));
    } else if (index == 2) {
      print("Push2");
    } else if (index == 3) {
      print('Push3');
    } else {
      print('PUsh4');
    }
  }

  List<String> detail = [
    '\t\t\t\t\t\tการตรวจวินิจฉัย\n\n การรักษามะเร็งผิวหนังที่ดีที่สุดคือ การค้นพบตั้งแต่แรกเริ่ม โดยต้องสำรวจร่างกายตัวเองให้ทั่ว ซึ่งต้องใช้กระจกและมือช่วย ถ้ามีข้อสงสัยให้ปรึกษาแพทย์ผิวหนังเพื่อการวินิจฉัย ซึ่งทำได้โดยการตัดชิ้นเนื้อบริเวณที่สงสัยส่งตรวจทางพยาธิวิทยา',
    '\t\t\t\t\t\tการบำบัดรักษา \n\n มะเร็งผิวหนังระยะเริ่มต้นใช้วิธีการผ่าตัดก็สามารถหายขาดได้ แต่หากเป็นมะเร็งระยะกระจายหรือมะเร็งผิวหนังเมลาโนมา หลังผ่าตัดอาจต้องมีการใช้การฉายแสงหรือเคมีบำบัดร่วมได้',
    '\t\t\t\t\t\tการป้องกัน\n\n 1.หลีกเลี่ยงแสงแดด ใช้ครีมกันแดด SPF > 15\n\n 2. หลีกเลี่ยงภาวะระคายเคืองผิวหนัง'
  ];

  List<String> imagemenu = [
    'assets/images/disease/menu1.png',
    'assets/images/disease/menu2.png'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView(children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 15,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          'การรับมือ',
                          style: TextStyle(
                            fontSize: 30,
                            color: kheaderColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'โรคพืชทุเรียนจากเชื้อรา ที่ควรรู้ ?',
                              style: TextStyle(
                                fontSize: 15,
                                color: kheaderColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 45,
                  child: Image.asset('assets/logo/leaf-color.png'),
                )
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Container(
              width: size.width,
              height: 500,
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
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: GridView.count(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                                childAspectRatio: 0.78,
                                children: <Widget>[
                                  listCardMenu(
                                    backgroundmenu:
                                        Color.fromARGB(255, 242, 189, 169),
                                    title: "ใบจุดสาหร่าย",
                                    imagemenu: imagemenu[0],
                                      index: 1,
                                      onclick: pushMenu
                                  ),
                                  listCardMenu(
                                      backgroundmenu: Colors.yellow,
                                      title: "เพลี้ยไก่แจ้ทุเรียน",
                                      imagemenu: imagemenu[0],
                                      index: 2,
                                      onclick: pushMenu),
                                  listCardMenu(
                                      backgroundmenu: kbackgroundColorGreen,
                                      title: "เพลี้ยหอยรัสเซลล์",
                                      imagemenu: imagemenu[1],
                                      index: 3,
                                      onclick: pushMenu),
                                  listCardMenu(
                                      backgroundmenu: Colors.blue,
                                      title: "เเอนเเทรคโนส",
                                      imagemenu: imagemenu[0],
                                      index: 4,
                                      onclick: pushMenu)
                                ])))
                  ],
                ),
              ),
            ),
          )
        ])
      ])
    ]);
  }
}

class listCardMenu extends StatelessWidget {
  final Color backgroundmenu;
  final String title;
  final String imagemenu;
  final Function onclick;
  final int index;
  const listCardMenu({
    Key key,
    this.backgroundmenu,
    this.title,
    this.imagemenu,
    this.onclick,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onclick(index),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(20),
            color: Colors.white),
        child: Column(
          children: <Widget>[
            Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(imagemenu),
                ),
                height: 125,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: backgroundmenu)),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontFamily: 'Taitham3'),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white54),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: const Text(
                  'อ่านรายละเอียด ',
                  style: TextStyle(
                      fontFamily: 'Taitham3',
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
