import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/widgets.dart';
import 'package:sem_store/resource/assets.gen.dart';
import 'package:sem_store/resource/fonts.gen.dart';
import 'package:sem_store/widget/app_row_item.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(final BuildContext context) {
    return cupertino.CupertinoApp(
      title: 'SemStore',
      theme: const cupertino.CupertinoThemeData(
        textTheme: cupertino.CupertinoTextThemeData(
          textStyle: TextStyle(fontFamily: AppFontFamily.sFProText),
        ),
      ),
      home: cupertino.CupertinoPageScaffold(
        navigationBar: const cupertino.CupertinoNavigationBar(
          middle: Text(
            'SemStore',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.31,
              fontFamily: AppFontFamily.sFProText
            ),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 8,
              children: <Widget>[
                AppRowItem(
                  appIcon: Assets.images.yooMoney,
                  appName: 'YooMoney',
                  appVersion: '1.1.1',
                ),
                AppRowItem(
                  appIcon: Assets.images.yooMoney,
                  appName: 'YooMoney',
                  appVersion: '1.1.1',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
