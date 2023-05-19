import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/features/launches/model/launches_filter_data/launches_filter_data.dart';
import 'package:spacexplorer/features/launches/model/launches_state/launches_state.dart';
import 'package:spacexplorer/features/launches/provider/launches_state_notifier_provider.dart';

class LaunchesFilterDialog extends HookConsumerWidget {
  const LaunchesFilterDialog({super.key});

  static const String emptyYear = '–';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final launchesState = ref.watch(launchesStateNotifierProvider);
    final launchesNotifier = ref.read(launchesStateNotifierProvider.notifier);

    final filterData = useState(const LaunchesFilterData());

    useMemoized(() {
      if (launchesState.filterData != filterData.value) {
        filterData.value = launchesState.filterData;
      }
    }, []);

    return Dialog(
      child: DefaultTextStyle.merge(
        style: const TextStyle(color: Colors.black),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 300,
            maxHeight: 300,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                Text(
                  'Launches filter',
                  style: Theme.of(context).textTheme.titleLarge!.apply(
                        color: Colors.black,
                      ),
                ),
                buildYearDropdown(context, filterData, launchesState),
                buildCheckboxRow(
                  title: 'Show only successful',
                  onChanged: (value) {
                    filterData.value =
                        filterData.value.copyWith(success: value);
                  },
                  value: filterData.value.success,
                  context: context,
                  filterData: filterData,
                  launchesState: launchesState,
                ),
                buildCheckboxRow(
                  title: 'Show only with images',
                  onChanged: (value) {
                    filterData.value =
                        filterData.value.copyWith(onlyWithImages: value);
                  },
                  value: filterData.value.onlyWithImages,
                  context: context,
                  filterData: filterData,
                  launchesState: launchesState,
                ),
                const Spacer(),
                buildApplyAndResetButton(filterData, launchesNotifier, context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCheckboxRow({
    required String title,
    // ignore: avoid_positional_boolean_parameters
    required void Function(bool? value) onChanged,
    required bool? value,
    required BuildContext context,
    required ValueNotifier<LaunchesFilterData> filterData,
    required LaunchesState launchesState,
  }) {
    return Row(
      children: [
        Text(
          '$title: ',
          style: Theme.of(context).textTheme.bodyLarge!.apply(
                color: Colors.black,
              ),
        ),
        Checkbox(
          value: value ?? false,
          onChanged: (value) => onChanged(value),
        ),
      ],
    );
  }

  Row buildYearDropdown(
    BuildContext context,
    ValueNotifier<LaunchesFilterData> filterData,
    LaunchesState launchesState,
  ) {
    return Row(
      children: [
        Text(
          'Year: ',
          style: Theme.of(context).textTheme.bodyLarge!.apply(
                color: Colors.black,
              ),
        ),
        Expanded(
          child: DropdownButton<String>(
            hint: const Text('Year'),
            isExpanded: true,
            value: filterData.value.year ?? emptyYear,
            style: const TextStyle(
              color: Colors.black,
            ),
            items: getYearFilterItems(launchesState.allYears),
            onChanged: (value) {
              if (value == emptyYear) {
                filterData.value = filterData.value.copyWith(year: null);
              } else {
                filterData.value = filterData.value.copyWith(year: value);
              }
            },
          ),
        ),
      ],
    );
  }

  Row buildApplyAndResetButton(
    ValueNotifier<LaunchesFilterData> filterData,
    LaunchesStateNotifier launchesNotifier,
    BuildContext context,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FilledButton.tonal(
          onPressed: () {
            filterData.value = const LaunchesFilterData();
            launchesNotifier.filter(filterData.value);
            context.pop(context);
          },
          child: const Text('Reset'),
        ),
        FilledButton(
          onPressed: () {
            launchesNotifier.filter(filterData.value);
            context.pop();
          },
          child: const Text('Apply'),
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> getYearFilterItems(List<String> allYears) {
    final items = <DropdownMenuItem<String>>[
      const DropdownMenuItem(
        value: '–',
        child: Text(
          '–',
        ),
      ),
      ...allYears.map(
        (e) => DropdownMenuItem<String>(
          value: e,
          child: Text(e),
        ),
      )
    ];

    return items;
  }
}
