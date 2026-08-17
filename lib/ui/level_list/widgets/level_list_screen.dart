import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import 'package:financials/ui/level_list/view_models/level_list_viewmodel.dart';

class LevelListScreen extends StatefulWidget {
  LevelListScreen({super.key, required this.viewModel});

  final LevelListViewModel viewModel;

  @override
  State<LevelListScreen> createState() => _LevelListScreenState();
}

class _LevelListScreenState extends State<LevelListScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, child) => SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              for (final level in widget.viewModel.levels)
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: CupertinoButton(
                    color: CupertinoColors.systemGrey,
                    child: Text(
                      level.description,
                      style: TextStyle(color: CupertinoColors.white),
                    ),
                    onPressed: () => context.pushNamed(
                      'level',
                      pathParameters: {'levelId': level.levelId},
                      extra: level.description,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
