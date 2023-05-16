import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:spacexplorer/core/helpers/services/main_http_client.dart';

final mainHttpClientProvider = Provider<Client>((ref) {
  return MainHttpClient('https://api.spacexdata.com', Client());
});
