import 'package:flutter/material.dart';
import 'basicDesign.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CookBook',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => MyMenuPage(),
        '/snackbar': (BuildContext context) => SnackBarPage(),
        '/tabs': (BuildContext context) => TabsViewDemoPage(),
        '/drawer': (BuildContext context) => MyDrawerPage(),
        '/orientation': (BuildContext context) =>
            OrientationList(title: 'Orientation'),
        '/fadeImage': (BuildContext content) => MyFadeImagePage(),

      },
      theme: ThemeData(primaryColor: Colors.blue),
    );
  }
}

class MyMenuPage extends StatelessWidget {
  final menus = [
    'Displaying SnackBars',
    'Working with Tabs',
    'Add a Drawer to a screen',
    'Updating the UI based on orientation',
    'Fade in images with a placeholder',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CookBook'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(menus[index]),
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.of(context).pushNamed('/snackbar');
                      break;
                    case 1:
                      Navigator.of(context).pushNamed('/tabs');
                      break;
                    case 2:
                      Navigator.of(context).pushNamed('/drawer');
                      break;
                    case 3:
                      Navigator.of(context).pushNamed('/orientation');
                      break;
                    case 4:
                      Navigator.of(context).pushNamed('/fadeImage');
                  }
                },
              ),
              Divider(
                height: 0.5,
              )
            ],
          );
        },
        itemCount: menus.length,
      ),
    );
  }
}
