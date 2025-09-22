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
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/ad/e3/d4/ade3d45e-dcaf-2304-a13d-d8af26c2082e/AppIcon-0-0-1x_U007ephone-0-0-85-220.png/114x114bb.jpg',
      name: 'Купер',
      version: '10.0.36',
      bundleId: 'ru.moiseev',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/1b/b8/22/1bb822c5-9bf8-b891-0043-caeac443cea3/AppIcon-0-0-1x_U007emarketing-0-7-0-sRGB-85-220.png/114x114bb.jpg',
      name: 'Еаптека',
      version: '24.7.20',
      bundleId: 'com.applap.Pharma',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple123/v4/20/d1/45/20d145cc-409c-c917-0b08-4a0163975368/AppIcon-1x_U007emarketing-0-7-0-85-220.png/114x114bb.jpg',
      name: 'Академия инвестиций',
      version: '3.7.0',
      bundleId: 'ru.tcsbank.invest.course',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/08/32/33/083233a5-26c6-d087-9bd2-55dbd2701b0d/AppIcon-1x_U007emarketing-0-7-0-85-220.png/114x114bb.jpg',
      name: 'Модульбанк',
      version: '6.06.0',
      bundleId: 'MB.Modulbank',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/e7/b7/b7/e7b7b7bc-2bb2-ff6f-7451-dcb45516e8e9/AppIcon-0-0-1x_U007epad-0-1-0-85-220.jpeg/114x114bb.jpg',
      name: 'OfficeCapital',
      version: '1.8',
      bundleId: 'com.dreamgoods.officecapital',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/b8/8f/2e/b88f2e7a-f95a-6f6e-b54e-dde1d6eae003/AppIcon-1x_U007emarketing-0-10-0-85-220.png/114x114bb.jpg',
      name: 'Salute, Jazz',
      version: '23.10.2004',
      bundleId: 'ru.salute.b2b',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/ce/10/e7/ce10e720-821a-81f8-0123-6d230ca261dd/AppIcon-0-0-1x_U007epad-0-1-85-220.png/114x114bb.jpg',
      name: 'Catch',
      version: '3.0.1',
      bundleId: 'com.easycatch.sounder',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/2d/e0/fd/2de0fd84-a982-766b-95f4-d78ef24cf557/AppIcon-0-0-1x_U007ephone-0-1-0-85-220.png/114x114bb.jpg',
      name: 'Online',
      version: '16.13.0',
      bundleId: 'com.assetsonline.ios',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/43/7c/95/437c9537-773a-e0f2-6048-79a6954267d9/AppIcon-Light-0-0-1x_U007ephone-0-11-0-85-220.png/114x114bb.jpg',
      name: 'Sila Zvuka',
      version: '1.7.0',
      bundleId: 'com.sound.power',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/67/a4/7e/67a47e74-9e24-4cf5-b7e5-fa357143397b/AppIcon-0-0-1x_U007epad-0-1-85-220.png/114x114bb.jpg',
      name: 'SplitActivities',
      version: '28052025.3',
      bundleId: 'com.splitactivities.app',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/e8/d8/5e/e8d85e00-2472-d15d-635a-baaebbd1a240/AppIcon-0-0-1x_U007epad-0-1-85-220.png/114x114bb.jpg',
      name: 'Wheels',
      version: '1.13.1',
      bundleId: 'com.uvehicle.car.app',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/1d/2c/b4/1d2cb41f-bf59-916a-8fee-e87370ac1a41/AppIcon-0-0-1x_U007epad-0-1-85-220.png/114x114bb.jpg',
      name: 'My products',
      version: '1.3.2',
      bundleId: 'com.myproducts.myproductsapp',
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
