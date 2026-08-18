import 'package:flutter/cupertino.dart';

import '../view_models/question_viewmodel.dart';
import 'question_radio.dart';
import 'question_text.dart';

class QuestionScreen extends StatelessWidget {
  QuestionScreen({super.key, required this.viewModel});

  final QuestionViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        crossAxisAlignment: .start,
        children: [
          QuestionText(viewModel: viewModel),
          QuestionRadio(viewModel: viewModel),
        ],
      ),
    );
  }
}
