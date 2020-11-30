import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Culte extends StatelessWidget {
  static String routeName = 'culte';
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        height: 752.0, width: 360.0, allowFontScaling: false);

    return Scaffold(
      // backgroundColor: Color(0xff121314),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Culte"),
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
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                  height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(.3),
                          BlendMode.darken,
                        ),
                        image: AssetImage("images/cesa1.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Après le Baptème,il doit y avoir une transformation",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        "Orateur : ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            fontSize: 12),
                      ),
                      Text(
                        "Pasteur Mamadou Diomandé",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        "Date : ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            fontSize: 12),
                      ),
                      Text(
                        "27 Sep 2020",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                  height: 150.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(.3),
                          BlendMode.darken,
                        ),
                        image: AssetImage("images/cesa2.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Après le Baptème,il doit y avoir une transformation",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.sp),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        "Orateur : ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            fontSize: 12.sp),
                      ),
                      Text(
                        "Pasteur Mamadou Diomandé",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        "Date : ",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            fontSize: 12.sp),
                      ),
                      Text(
                        "27 Sep 2020",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
