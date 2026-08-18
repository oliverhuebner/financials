import 'package:flutter/cupertino.dart';

import 'package:go_router/go_router.dart';

import '../view_models/level_viewmodel.dart';

class LevelScreen extends StatelessWidget {
  LevelScreen({super.key, required this.levelId});

  final String levelId;

  @override
  Widget build(BuildContext context) {
    String levelDescription = '';
    if (GoRouterState.of(context).extra != null) {
      levelDescription = GoRouterState.of(context).extra as String;
    }
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(automaticallyImplyLeading: true),
      child: Stack(
        children: [
          Center(child: Text(levelDescription)),
          Positioned(
            bottom: 30,
            right: 30,
            child: CupertinoButton(
              child: Text('Start'),
              onPressed: () => context.goNamed(
                'page',
                pathParameters: {'levelId': levelId, 'pageNumber': '1'},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
