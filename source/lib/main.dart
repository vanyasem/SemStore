import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/widgets.dart';
import 'package:sem_store/entity/app.dart';
import 'package:sem_store/resource/fonts.dart';
import 'package:sem_store/widget/app_row_item.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static final List<App> _apps = <App>[
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/2b/8c/2d/2b8c2d13-8eac-621d-adf5-871eeff62e58/AppIcon-0-0-1x_U007epad-0-1-0-85-220.png/114x114bb.jpg',
      name: 'Discord',
      version: '289.2',
      bundleId: 'com.hammerandchisel.discord',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/2b/8c/2d/2b8c2d13-8eac-621d-adf5-871eeff62e58/AppIcon-0-0-1x_U007epad-0-1-0-85-220.png/114x114bb.jpg',
      name: 'YooMoney',
      version: '11.12.0',
      bundleId: 'ru.yoo.money',
    ),
  ];

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
              fontFamily: AppFontFamily.sFProText,
            ),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              spacing: 8,
              children: _apps
                  .map((final App app) {
                    return AppRowItem(
                      appIconUrl: app.iconUrl,
                      appName: app.name,
                      appVersion: app.version,
                      onInstallClick: () {
                        const String plistUrl = 'https://plist.vanyasem.ru';
                        final Uri plistUri = Uri.parse(
                          'itms-services://?action=download-manifest&url=$plistUrl/${app.bundleId}/${app.version}/${app.name}',
                        );
                        url_launcher.launchUrl(plistUri);
                      },
                    );
                  })
                  .toList(growable: false),
            ),
          ),
        ),
      ),
    );
  }
}
