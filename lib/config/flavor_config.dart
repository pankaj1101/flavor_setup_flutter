// ignore: constant_identifier_names
enum Flavor { DEV, UAT, PROD }

class FlavorConfig {
  static late String appName;
  static late String apiBaseUrl;

  static Future<void> loadConfig(Flavor flavor) async {
    switch (flavor) {
      case Flavor.UAT:
        appName = "Sample UAT";
        apiBaseUrl = "https://uat-api.example.com";
        break;
      case Flavor.PROD:
        appName = "Sample";
        apiBaseUrl = "https://api.example.com";
        break;
      default:
        appName = "Sample Dev";
        apiBaseUrl = "https://dev-api.example.com";
    }
  }
}
