import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Enseignement extends StatelessWidget {
  static String routeName = 'enseignement';
  @override
  Widget build(BuildContext context) {
         ScreenUtil.init(context, height: 752.0, width:360.0, allowFontScaling: false);

    return Scaffold(
      // backgroundColor: Color(0xff121314),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Enseignement"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180.0.h,
              width: MediaQuery.of(context).size.width,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: false,
                // animationCurve: Curves.easeInOut,
                // animationDuration: Duration(seconds: 5),
                dotSize: 6.0,
                dotColor: Color(0xFFCCCCCC),
                dotIncreasedColor: Colors.white,
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.bottomCenter,
                dotVerticalPadding: 10.0,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                images: [
                  ExactAssetImage("images/cesa1.jpg"),
                  ExactAssetImage("images/cesa2.png"),
                  ExactAssetImage("images/enseignement.jpg"),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Wrap(
              children: [
                Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      height: 150.h,
                      width: 150.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/cesa1.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Après le Baptème,il doit y avoir une transformation",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                    Text(
                      "Past Mamadou Diomandé",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                    ),
                  ],
                ),
                  Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      height: 150,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/enseignement.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Après le Baptème,il doit y avoir une transformation",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                    Text(
                      "Past Mamadou Diomandé",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                    ),
                  ],
                ),
                 Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      height: 150,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/meditation.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Après le Baptème,il doit y avoir une transformation",
                        
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                    Text(
                      "Past Mamadou Diomandé",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                    ),
                  ],
                ),
                 Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                      height: 150,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("images/priere.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Container(
                      width: 150,
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "Après le Baptème,il doit y avoir une transformation",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                    ),
                    Text(
                      "Past Mamadou Diomandé",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                    ),
                  ],
                ),
             
              ],
            ),
          ],
        ),
      
      ),
    );
  }
}
