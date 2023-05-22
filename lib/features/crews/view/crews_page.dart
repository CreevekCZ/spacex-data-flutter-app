import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/features/crews/model/crews_state/crews_state.dart';
import 'package:spacexplorer/features/crews/provider/crews_state_notifier_provider.dart';
import 'package:spacexplorer/features/crews/widgets/crew_list_tile.dart';

class CrewsPage extends StatefulHookConsumerWidget {
  const CrewsPage({super.key});

  @override
  ConsumerState<CrewsPage> createState() => _CrewsPageState();
}

class _CrewsPageState extends ConsumerState<CrewsPage> {
  late CrewsStateNotifier crewsNotifier;
  late CrewsState crewsState;

  @override
  Widget build(BuildContext context) {
    crewsNotifier = ref.read(crewsStateNotifierProvider.notifier);
    crewsState = ref.watch(crewsStateNotifierProvider);

    final crewSearchTextEditingController = useTextEditingController();

    return RefreshIndicator(
      onRefresh: () => crewsNotifier.getAll(),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Crews'),
            centerTitle: false,
            titleTextStyle: Theme.of(context).textTheme.headlineMedium!,
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () => crewsNotifier.getAll(),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 50),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SearchBar(
                  hintText: 'Search...',
                  controller: crewSearchTextEditingController,
                  leading: const Center(
                    child: Icon(Icons.search),
                  ),
                  trailing: [
                    Visibility(
                      visible: crewSearchTextEditingController.text.isNotEmpty,
                      child: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          crewSearchTextEditingController.clear();
                          clearSearch();
                        },
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    searchCrews(value);

                    if (value.isEmpty) {
                      clearSearch();
                    }
                  },
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final crew = crewsState.filteredCrews[index];
                return CrewListTile(crew: crew);
              },
              childCount: crewsState.filteredCrews.length,
            ),
          ),
        ],
      ),
    );
  }

  void searchCrews(String value) {
    crewsNotifier.filter(
      crewsState.filterData.copyWith(searchTerm: value),
    );
  }

  void clearSearch() {
    crewsNotifier.filter(
      crewsState.filterData.copyWith(searchTerm: null),
    );
  }
}
