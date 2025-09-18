import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(final BuildContext context) {
    return const cupertino.CupertinoApp(
      home: cupertino.CupertinoPageScaffold(
        navigationBar: cupertino.CupertinoNavigationBar(
          middle: Text('SemStore'),
        ),
        child: Column(children: <Widget>[Text('Hello world!')]),
      ),
    );
  }
}
