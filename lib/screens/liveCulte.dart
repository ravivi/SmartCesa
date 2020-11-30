import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class LiveCulte extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String html = '''
<html>
<body>

         <iframe src="https://www.facebook.com/plugins/video.php?href=https%3A%2F%2Fwww.facebook.com%2FPasteurMamadouDiomande%2Fvideos%2F3308109799297484%2F&show_text=0&width=560" width="560" height="315" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allowFullScreen="true"></iframe>

</body>
</html>
     ''';

    return Scaffold(
     
      body: new SingleChildScrollView(
        child: HtmlWidget(
          html,
          webView: true,
        ),
      ),
    );
  }
}
