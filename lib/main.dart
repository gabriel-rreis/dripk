import 'package:flutter/material.dart';

void main() {
  runApp(DripkApp());
}

class DripkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.brown,
            accentColor: Colors.lightBlue,
            brightness: Brightness.dark,
          )),
      home: MethodsPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MethodsPage extends StatefulWidget {
  MethodsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MethodsPageState createState() => _MethodsPageState();
}

class _MethodsPageState extends State<MethodsPage> {
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
          child: Container(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
            height: 425,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Two-line ListTile',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    subtitle: Text(
                      'Here is a second line',
                      style: Theme.of(context).textTheme.overline,
                    ),
                    // trailing: CircleAvatar(
                    //   backgroundImage: NetworkImage(
                    //     'https://placeimg.com/640/480/any'
                    //   ),
                    // )
                  ),
                  Image.network(
                    'https://placeimg.com/640/480/any',
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                        'Viverra a suscipit tincidunt sem eu pellentesque. '
                        'At in vitae orci amet, est rutrum.'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

// TODO: Add custom font (https://flutter.dev/docs/cookbook/design/fonts)
// TODO: Add theme (https://flutter.dev/docs/cookbook/design/themes)
