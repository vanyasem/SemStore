import 'package:flutter/cupertino.dart' as cupertino;
import 'package:flutter/widgets.dart';
import 'package:sem_store/resource/assets.gen.dart';
import 'package:sem_store/resource/fonts.gen.dart';

class AppRowItem extends StatelessWidget {
  const AppRowItem({
    super.key,
    required this.appIcon,
    required this.appName,
    required this.appVersion,
  });

  final AssetGenImage appIcon;
  final String appName;
  final String appVersion;

  @override
  Widget build(final BuildContext context) {
    return Row(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: appIcon.image(fit: BoxFit.cover, width: 76, height: 76),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  appName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.31,
                    fontFamily: AppFontFamily.sFProText,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 8)),
                Text(
                  appVersion,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: cupertino.CupertinoColors.systemGrey,
                    letterSpacing: -0.31,
                    fontFamily: AppFontFamily.sFProText,
                  ),
                ),
              ],
            ),
          ),
        ),
        cupertino.CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            // TODO(vanyasem): Add action
          },
          child: const Icon(
            cupertino.CupertinoIcons.cloud_download,
            semanticLabel: 'Install',
          ),
        ),
      ],
    );
  }
}
