import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/widgets.dart';
import 'package:sem_store/entity/app.dart';
import 'package:sem_store/resource/assets.gen.dart';
import 'package:sem_store/resource/fonts.gen.dart';
import 'package:sem_store/widget/app_row_item.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static final List<App> _apps = <App>[
    App(
      icon: Assets.images.discord,
      name: 'Discord',
      version: '289.2',
      plistUrl: 'https://download.vanyasem.ru/plist/discord-manifest.plist',
    ),
    App(
      icon: Assets.images.yooMoney,
      name: 'YooMoney',
      version: '11.12.0',
      plistUrl: '', // TODO(vanyasem): Add plist Url
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
                      appIcon: app.icon,
                      appName: app.name,
                      appVersion: app.version,
                      onInstallClick: () {
                        final Uri plistUri = Uri.parse(
                          'itms-services://?action=download-manifest&url=${app.plistUrl}',
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
