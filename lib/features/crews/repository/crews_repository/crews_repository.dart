import 'package:spacexplorer/core/repository/base_reposiory.dart';
import 'package:spacexplorer/features/crews/model/crew/crew.dart';

abstract class CrewsRepository extends BaseRepository<Crew> {
  CrewsRepository(super.client, super.decoder);
}
