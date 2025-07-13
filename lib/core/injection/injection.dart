import 'package:flutter_credit_management/core/injection/env.dart';
import 'package:flutter_credit_management/main.dart';

class Injection {
  static const String fontFamily = 'Inter';
  // static final AppSharedPrefKey sharedPrefKey = AppSharedPrefKey();
  // static final HttpClient httpClient = AppHttpClient.create();
  // static final HeaderProvider headerProvider = AppHeaderProvider.create();
  static final String baseURL = env.baseURL;
  static final bool isDevelopment = env.isDevelopMode;
}
