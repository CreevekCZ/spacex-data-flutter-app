import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/core/providers/main_http_client_provider.dart';
import 'package:spacexplorer/features/crews/model/crew/crew.dart';
import 'package:spacexplorer/features/crews/repository/crews_repository/crews_repository.dart';
import 'package:spacexplorer/features/crews/repository/crews_repository/impl_crews_repository.dart';

final crewsRepositoryProvider = Provider<CrewsRepository>((ref) {
  return ImplCrewsRepository(
    ref.read(mainHttpClientProvider),
    (json) => Crew.fromJson(json),
  );
});
