import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/core/providers/main_http_client_provider.dart';
import 'package:spacexplorer/features/launches/model/launch/launch.dart';
import 'package:spacexplorer/features/launches/repository/launches_repository/impl_launches_repository.dart';
import 'package:spacexplorer/features/launches/repository/launches_repository/launches_repository.dart';

final launchesRepositoryProvider = Provider<LaunchesRepository>((ref) {
  return ImplLaunchesRepository(
    ref.read(mainHttpClientProvider),
    (json) => Launch.fromJson(json),
  );
});
