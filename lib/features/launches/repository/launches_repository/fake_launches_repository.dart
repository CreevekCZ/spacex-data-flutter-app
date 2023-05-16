import 'package:spacexplorer/features/launches/model/launch/launch.dart';
import 'package:spacexplorer/features/launches/repository/launches_repository/launches_repository.dart';

class FakeLaunchReposotory extends LaunchesRepository {
  FakeLaunchReposotory(super.client, super.decoder);

  @override
  Future<List<Launch>> getAll() {
    throw UnimplementedError();
  }

  @override
  Future<Launch?> getById(String indetifier) {
    throw UnimplementedError();
  }
}
