import 'package:flutter/material.dart';
import 'package:skincacer_project_final/Screens/menu/manual_screen.dart';
import 'package:skincacer_project_final/Screens/menu_disease/algal_spot_body.dart';
import 'package:skincacer_project_final/Screens/predictions_screen.dart';

import '../../constrance.dart';


class BodyDisease extends StatelessWidget {
  final int index;
   BodyDisease({Key key, this.index,}) : super(key: key);

  int newindex = 0;

  ImagesList imageCard = new ImagesList();
  List<String> title = ['Algal Spot' , 'Durian psyllid' , 'Asterolecanium ungulatum Russell' , 'Anthracnose'];
  List<String> detail = ['ลักษณะใบที่เป็นโรคจุดสาหร่าย','ลักษณะใบที่เป็นโรคเพลี้ยไก่แจ้ทุเรียน','ลักษณะใบที่เป็นโรคเพลี้ยหอยรัสเซลล์','ลักษณะใบที่เป็นโรคเเอนเเทรคโนส'];
  


  changeBody() {
    newindex = index;
    if (newindex == 1) {
      print("success");
      return  DiseaseScreen(
        title: title[0],
        detail: detail[0],
        images: imageCard.images1 ,
        titlefont: 30,
      );
    } else if (newindex == 2) {
      print("success1");
      return DiseaseScreen(
        title: title[1],
        detail: detail[1],
        images: imageCard.images1 ,
        titlefont: 30,
      );
    } else if (newindex == 3) {
      return DiseaseScreen(
        title: title[2],
        detail: detail[2],
        images: imageCard.images1 ,
        titlefont: 18,
      );
    } else {
      return DiseaseScreen(
        title: title[3],
        detail: detail[3],
        images: imageCard.images1 ,
        titlefont: 30,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kbackgroundColor,
        ),
        body: changeBody()
        ,
        backgroundColor: kbackgroundColorGreen,);
        
  }
}

class ImagesList{
  List<String> images1 =  ['assets/images/disease/menu1.png','assets/images/disease/menu2.png'];
}

class DetailCard {
  List<String> title_algal_spot = ['ลักษณะของโรค','วิธีการรักษา'];
}