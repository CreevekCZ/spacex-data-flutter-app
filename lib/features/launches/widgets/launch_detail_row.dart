import 'package:flutter/material.dart';

class LaunchDetailRow extends StatelessWidget {
  const LaunchDetailRow({
    required this.label,
    required this.value,
    super.key,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$label: ',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        SelectableText(
          value,
          style: Theme.of(context).textTheme.bodyLarge!,
        ),
      ],
    );
  }
}
