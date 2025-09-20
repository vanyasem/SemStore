import 'package:sem_store/resource/assets.gen.dart';

final class App {
  const App({
    required this.icon,
    required this.name,
    required this.version,
    required this.bundleId,
  });

  final AssetGenImage icon;
  final String name;
  final String version;
  final String bundleId;
}
