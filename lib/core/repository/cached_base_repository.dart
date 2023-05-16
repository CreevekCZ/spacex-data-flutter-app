import 'package:hive_flutter/hive_flutter.dart';
import 'package:spacexplorer/core/helpers/interfaces/identifiable.dart';
import 'package:spacexplorer/core/repository/base_reposiory.dart';

abstract class CachedBaseRepository<T extends Identifiable>
    extends BaseRepository {
  CachedBaseRepository(
    this.box,
    super.client,
    super.decoder,
  );

  final Box<T> box;

  Future<T?> getCachedById(String indetifier) async {
    return box.get(indetifier);
  }

  Future<void> cacheItem(T item) async {
    await box.put(item.hashCode, item);
  }

  Future<void> cacheItems(List<T> items) async {
    await box.clear();

    final Map<String, T> itemsMap = {
      for (final item in items) item.identifier: item,
    };

    await box.putAll(itemsMap);
  }
}
