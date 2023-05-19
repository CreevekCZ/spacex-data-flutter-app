import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ConfusedBanner extends HookWidget {
  const ConfusedBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final visible = useState(false);

    Future.delayed(const Duration(seconds: 1), () {
      visible.value = true;
    });

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        AnimatedOpacity(
          opacity: visible.value ? 1 : 0,
          duration: const Duration(seconds: 1),
          child: const Text(
            'Coming soon...',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Flexible(
          child: Image.asset(
            'assets/images/confused.gif',
            fit: BoxFit.fitHeight,
          ),
        ),
      ],
    );
  }
}
