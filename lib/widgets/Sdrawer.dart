import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';

Widget mDrawer(BuildContext context) {
  return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: Drawer(
        child: Container(
          color: Colors.white.withAlpha(100),
          child: Column(
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/header.jpg"),
                          fit: BoxFit.fill,
                          colorFilter:
                              ColorFilter.mode(Colors.black, BlendMode.color))),
                  child: Container(
                    decoration:
                        BoxDecoration(color: Colors.blue.withOpacity(0.2)),
                    width: 300,
                    height: 300,
                    //   child:  Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: <Widget>[
                    //       CircleAvatar(radius: 30,
                    //         backgroundImage: AssetImage("images/new6.jpg"),),
                    //       Text("cedric Axel"),
                    //       Text("coboguie@gmail.com"),

                    //     ],
                    //   ),
                    //
                  )),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, "checkOut");
                      },
                      leading: Icon(
                        Icons.check_circle_outline,
                        //color: customGold1,
                        size: 23,
                      ),
                      title: Text(
                        "Mes Commandes",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, "favoritePage");
                      },
                      leading: Icon(
                        Icons.shopping_basket,
                        //color: customGold1,
                        size: 23,
                      ),
                      title: Text("Articles sauvergadés",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, 'cookBook');
                      },
                      leading: Icon(
                        Icons.tv,
                        //color: customGold1,
                        size: 23,
                      ),
                      title: Text("CookBook",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      onTap: () {
                       Navigator.pop(context);
                        launchUrl2(
                            'sales@wmcci.com',
                            "Besoin d'aide",
                            'Bonjour ');
                      },
                      leading: Icon(
                        Icons.info_outline,
                        //color: customGold1,
                        size: 23,
                      ),
                      title: Text("Contactez-nous",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ));
}

void launchUrl2(String toMailId, String subject, String body) {
  var url = 'mailto:$toMailId?subject=$subject&body=$body';
  launch(url);
}