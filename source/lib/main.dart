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
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/04/8f/74/048f7434-e138-992d-5601-2ff479a20366/AppIcon-0-0-1x_U007epad-0-1-0-85-220.png/114x114bb.jpg',
      name: 'Discord',
      version: '310.3',
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
          'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/36/11/c4/3611c471-4804-5e38-a8ea-112dedcfa4d1/AppIcon-0-0-1x_U007epad-0-1-0-85-220.jpeg/114x114bb.jpg',
      name: 'Финансист',
      version: '1.0.3',
      bundleId: 'com.ourbill.app',
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
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/33/bd/c4/33bdc466-70f0-0b85-db0c-982201dbf5e7/AppIcon-0-0-1x_U007ephone-0-1-0-85-220.png/114x114bb.jpg',
      name: 'Online',
      version: '17.0.0',
      bundleId: 'com.digit.budg',
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
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/60/b9/5f/60b95fc3-d5e5-44f7-a026-e49477c722a0/AppIcon-0-0-1x_U007emarketing-0-11-0-85-220.png/114x114bb.jpg',
      name: 'Alfoto',
      version: '2.0',
      bundleId: 'com.alfoto.app',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/80/ab/70/80ab702e-2793-af79-7cb7-235ec30b0324/AppIcon-0-0-1x_U007epad-0-1-85-220.png/114x114bb.jpg',
      name: 'TBirds',
      version: '1.21.1',
      bundleId: 'com.birds.voices.app',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/8e/9a/90/8e9a9072-e627-8c35-33f6-11e62ed648e5/AppIcon-0-0-1x_U007epad-0-1-85-220.png/114x114bb.jpg',
      name: 'Taiga',
      version: '1.6',
      bundleId: 'com.hevarkian.taiga',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/1d/2c/b4/1d2cb41f-bf59-916a-8fee-e87370ac1a41/AppIcon-0-0-1x_U007epad-0-1-85-220.png/114x114bb.jpg',
      name: 'My products',
      version: '1.3.2',
      bundleId: 'com.myproducts.myproductsapp',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/c1/ed/79/c1ed79d8-6b03-da63-ede4-d01d8da6d7ff/AppIcon-0-0-1x_U007ephone-0-11-85-220.jpeg/114x114bb.jpg',
      name: 'GC AI',
      version: '1.8.1',
      bundleId: 'com.neuro.app.prod',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/00/89/ba/0089bae1-06ac-21e6-b96b-010f854b0a41/AppIcon-0-0-1x_U007ephone-0-11-0-85-220.png/114x114bb.jpg',
      name: 'INSNC',
      version: '1.68.0',
      bundleId: 'by.alfabank.insync3',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple116/v4/f8/2b/27/f82b27a0-b4fd-f699-c587-322cf98f7d6c/AppIcon-0-1x_U007emarketing-0-7-0-0-sRGB-85-220-0.png/114x114bb.jpg',
      name: 'InSync.by',
      version: '8.4.8',
      bundleId: 'by.alfabank.insync',
    ),
    const App(
      iconUrl:
          'https://is1-ssl.mzstatic.com/image/thumb/Purple221/v4/ec/a0/ed/eca0ed52-e7d9-6d83-3064-2ea2aff3d907/StikDebug-0-0-1x_U007epad-0-1-sRGB-85-220.png/114x114bb.jpg',
      name: 'StikDebug',
      version: '2.3.5',
      bundleId: 'com.stik.sj',
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
