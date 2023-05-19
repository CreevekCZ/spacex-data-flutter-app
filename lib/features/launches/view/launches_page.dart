import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/features/launches/model/launches_state/launches_state.dart';
import 'package:spacexplorer/features/launches/provider/launches_state_notifier_provider.dart';
import 'package:spacexplorer/features/launches/widgets/launch_list_tile.dart';
import 'package:spacexplorer/features/launches/widgets/launches_filter_dialog.dart';

class LaunchesPage extends StatefulHookConsumerWidget {
  const LaunchesPage({super.key});

  @override
  ConsumerState<LaunchesPage> createState() => _LaunchesPageState();
}

class _LaunchesPageState extends ConsumerState<LaunchesPage> {
  late LaunchesStateNotifier launchesNotifier;
  late LaunchesState launchesState;

  @override
  Widget build(BuildContext context) {
    launchesNotifier = ref.read(launchesStateNotifierProvider.notifier);
    launchesState = ref.watch(launchesStateNotifierProvider);

    final searchTextEditingController = useTextEditingController(
      text: launchesState.filterData.searchTerm,
    );

    return RefreshIndicator(
      onRefresh: () async => launchesNotifier.getAll(),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Launches'),
            centerTitle: false,
            titleTextStyle: Theme.of(context).textTheme.headlineMedium!,
            actions: [
              IconButton(
                icon: Icon(
                  launchesState.filterData.isFilterActive
                      ? Icons.filter_alt_off
                      : Icons.filter_alt,
                  color: Colors.white,
                ),
                onPressed: () => showLaunchesFilterDialog(context),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 50),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SearchBar(
                  hintText: 'Search...',
                  controller: searchTextEditingController,
                  leading: const Center(
                    child: Icon(Icons.search),
                  ),
                  trailing: [
                    Visibility(
                      visible: searchTextEditingController.text.isNotEmpty,
                      child: IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          clearSearchLaunches();

                          searchTextEditingController.clear();
                        },
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    searchLaunches(value);

                    if (value.isEmpty) {
                      clearSearchLaunches();
                    }
                  },
                ),
              ),
            ),
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: launchesState.filteredLaunches.length,
              (context, index) {
                final launch = launchesState.filteredLaunches[index];

                return LaunchListTile(launch: launch);
              },
            ),
          ),
        ],
      ),
    );
  }

  void searchLaunches(String value) {
    launchesNotifier.filter(
      launchesState.filterData.copyWith(searchTerm: value),
    );
  }

  void clearSearchLaunches() {
    launchesNotifier.filter(
      launchesState.filterData.copyWith(searchTerm: null),
    );
  }

  void showLaunchesFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const LaunchesFilterDialog();
      },
    );
  }
}
