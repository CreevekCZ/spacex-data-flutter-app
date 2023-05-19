import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:spacexplorer/core/widgets/unfocuser.dart';
import 'package:spacexplorer/features/launches/view/launches_page.dart';
import 'package:spacexplorer/features/launches/widgets/confused_banner.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();

    return Unfocuser(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey.shade900,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Text(
                  'Launches',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400,
                  ),
                ),
                onPressed: () => pageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                ),
              ),
              IconButton(
                icon: Text(
                  'Crews',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade400,
                  ),
                ),
                onPressed: () => pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: PageView(
            controller: pageController,
            children: const [
              LaunchesPage(),
              ConfusedBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
