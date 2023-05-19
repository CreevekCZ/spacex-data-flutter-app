import 'package:flutter/material.dart';
import 'package:spacexplorer/features/launches/model/launch/launch.dart';

class LaunchDetail extends StatelessWidget {
  const LaunchDetail({
    required this.launch,
    super.key,
  });

  final Launch launch;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            const SizedBox(height: 20),
            Text(
              'Launch Date: ${launch.formatedDate}',
              style: Theme.of(context).textTheme.bodyLarge!,
            ),
            Text(
              'Launch id: ${launch.id}',
              style: Theme.of(context).textTheme.bodyLarge!,
            ),
            Text(
              'Details: ${launch.details ?? 'No details'}',
              style: Theme.of(context).textTheme.bodyLarge!,
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
          if (launch.smallPatchUrl != null)
            Row(
              children: [
                Hero(
                  tag: launch.hashCode,
                  child: Image.network(
                    launch.smallPatchUrl!,
                    fit: BoxFit.fitHeight,
                    width: 150,
                  ),
                ),
                const SizedBox(width: 20),
              ],
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
