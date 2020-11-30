import 'package:SmartCesa/screens/culte.dart';
import 'package:SmartCesa/screens/enseignement.dart';
import 'package:flutter/material.dart';
import '../widgets/subject.dart';

class Home extends StatelessWidget {
// AnimationLimiter(
//       child: ListView.builder(
//         itemCount: 100,
//         itemBuilder: (BuildContext context, int index) {
//           return AnimationConfiguration.staggeredList(
//             position: index,
//             duration: const Duration(milliseconds: 375),
//             child: SlideAnimation(
//               verticalOffset: 50.0,
//               child: FadeInAnimation(
//                 child: YourListChild(),
//               ),
//             ),
//           );
//         },
//       ),
//     ),
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, Culte.routeName);
            },
            child: Subject(id: 1,title: "Culte en direct",image: "images/cesa1.jpg",)),
          Subject(id: 2,title: "Temps de Parole",image: "images/cesa2.png",),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, Enseignement.routeName);

            },
            child: Subject(id: 3,title: "Enseignement",image: "images/enseignement.jpg",)),
          Subject(id: 4,title: "Moment de prière",image: "images/priere.jpg",),
          Subject(id: 5,title: "Méditation",image: "images/meditation.jpg",),
          Subject(id: 6,title: "Evenement",image: "images/event.jpg",)
        ],
      ),
    );
  }
}
