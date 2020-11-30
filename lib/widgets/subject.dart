import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Subject extends StatelessWidget {
  final int id;
  final String title,image;

  Subject({Key key, this.id, this.title, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
        ScreenUtil.init(context, height: 752.0, width:360.0, allowFontScaling: false);

     return Container(
    margin: EdgeInsets.all(10),
    height: 150.h,
    alignment: Alignment.center,
    child: Text(
      title,
      style: TextStyle(
        fontSize: 19.sp,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(.3),
            BlendMode.darken,
          ),
          image: AssetImage(image),
          fit: BoxFit.cover),
    ),
  );

  }
}

