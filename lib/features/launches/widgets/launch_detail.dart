import 'package:flutter/material.dart';
import 'package:spacexplorer/features/launches/mixins/launch_patch_image_mixin.dart';
import 'package:spacexplorer/features/launches/model/launch/launch.dart';
import 'package:spacexplorer/features/launches/widgets/launch_detail_row.dart';

class LaunchDetail extends StatelessWidget with LaunchPatchImageMixin {
  const LaunchDetail({
    required this.launch,
    super.key,
  });

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            const SizedBox(height: 20),
            LaunchDetailRow(label: 'Launch date', value: launch.formatedDate),
            LaunchDetailRow(label: 'Launch id', value: launch.id),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Details: ',
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  launch.details ?? 'No details',
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 100),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildPatch(
            context,
            launch: launch,
            width: 150,
            displayMissingImage: false,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  launch.name,
                  style: Theme.of(context).textTheme.headlineMedium!,
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      'Status: ',
                      style: Theme.of(context).textTheme.headlineSmall!.apply(
                            color: Colors.grey,
                          ),
                    ),
                    Text(
                      launch.sucessLabel.toUpperCase(),
                      style: Theme.of(context).textTheme.headlineSmall!.apply(
                            color: launch.sucessColor,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
