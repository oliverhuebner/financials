import 'package:flutter/cupertino.dart';

import '../view_models/question_viewmodel.dart';

class QuestionText extends StatefulWidget {
  QuestionText({required this.viewModel});

  final QuestionViewModel viewModel;

  @override
  State<QuestionText> createState() => _QuestionTextState();
}

class _QuestionTextState extends State<QuestionText> {
  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.viewModel,
      builder: (context, state) => Container(
        margin: EdgeInsets.fromLTRB(15, 30, 0, 15),
        child: Text(widget.viewModel.text),
      ),
    );
  }
}
