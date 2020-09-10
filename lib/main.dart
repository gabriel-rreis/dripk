import 'package:flutter/material.dart';
import 'mocks.dart';

void main() {
  runApp(DripkApp());
}

class DripkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dripk',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.brown,
        accentColor: Colors.lightBlue,
        textTheme: TextTheme(
          headline6: TextStyle(fontSize: 20.0, fontFamily: 'Staatliches'),
          overline: TextStyle(fontSize: 10.0, fontFamily: 'Open Sans'),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Open Sans'),
        ),
      ),
      home: MethodsPage(),
    );
  }
}

class MethodsPage extends StatelessWidget {
  MethodsPage({Key key}) : super(key: key);

  Widget _listItemBuilder(BuildContext context, int index) {
    return new Container(
      padding: EdgeInsets.all(8),
      height: 467,
      width: double.maxFinite,
      child: Card(
        elevation: 5,
        child: InkWell(
          splashColor: Theme.of(context).primaryColor,
          onTap: () {},
          child: Column(
            children: [
              ListTile(
                subtitle: Text(
                  methods[index].title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                title: Text(
                  methods[index].subtitle,
                  style: Theme.of(context).textTheme.overline,
                ),
              ),
              Image(
                image: AssetImage(methods[index].imagePath),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(methods[index].description),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 56.0,
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: methods.length,
            itemBuilder: _listItemBuilder,
          ),
        ));
  }
}

// TODO: Add custom font (https://flutter.dev/docs/cookbook/design/fonts)
// TODO: Add theme (https://flutter.dev/docs/cookbook/design/themes)
