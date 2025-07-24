// lib/config/app_config.dart

enum Flavor { sandbox, live }

class AppConfig {
  static late Flavor appFlavor;

  static String get collectionPrefix {
    switch (appFlavor) {
      case Flavor.sandbox:
        return "sandbox_";
      case Flavor.live:
        return "";
    }
  }

  static String get appTitle {
    switch (appFlavor) {
      case Flavor.sandbox:
        return "Investify Sandbox";
      case Flavor.live:
        return "Investify";
    }
  }
}
