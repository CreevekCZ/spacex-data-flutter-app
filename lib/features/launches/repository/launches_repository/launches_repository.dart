import 'package:spacexplorer/core/repository/base_reposiory.dart';
import 'package:spacexplorer/features/launches/model/launch/launch.dart';

abstract class LaunchesRepository extends BaseRepository<Launch> {
  LaunchesRepository(super.client, super.decoder);
}
