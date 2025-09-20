import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/widgets.dart';
import 'package:sem_store/entity/app.dart';
import 'package:sem_store/resource/fonts.dart';
import 'package:sem_store/util/collection_util.dart';
import 'package:sem_store/widget/app_row_item.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
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
          'https://is1-ssl.mzstatic.com/image/thumb/Purple112/v4/5a/74/b5/5a74b589-5170-5fa6-c8d7-8792f72f37a3/AppIcon-0-1x_U007emarketing-0-7-0-85-220.png/114x114bb.jpg',
      name: 'YooMoney',
      version: '11.12.0',
      bundleId: 'ru.yoo.money',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/f3/ac/14/f3ac141b-fb83-54d1-36c4-4db235025cc8/AppIcon-0-0-1x_U007emarketing-0-8-0-85-220.png/114x114bb.jpg',
      name: 'Авито',
      version: '200.5',
      bundleId: 'ru.avito.app',
    ),
  ];

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final TextEditingController _searchTextEditingController =
      TextEditingController();

  String _searchText = '';

  @override
  Widget build(final BuildContext context) {
    MainApp._apps.sort((final App a, final App b) => a.name.compareTo(b.name));

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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: cupertino.ListView(
              children: <Widget>[
                cupertino.CupertinoSearchTextField(
                  controller: _searchTextEditingController,
                  style: const TextStyle(fontFamily: AppFontFamily.sFProText),
                  onChanged: (_) {
                    setState(() {
                      _searchText = _searchTextEditingController.text;
                    });
                  },
                ),
                const SizedBox(height: 16),
                ...MainApp._apps
                    .where(
                      (final App item) => item.name
                          .toLowerCase()
                          .trim()
                          .contains(_searchText.toLowerCase().trim()),
                    )
                    .map<Widget>((final App app) {
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
                    .separatedWith(const SizedBox(height: 8)),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
