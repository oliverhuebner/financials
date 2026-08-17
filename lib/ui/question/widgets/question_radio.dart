import 'package:flutter/cupertino.dart';

import '../view_models/question_viewmodel.dart';

class QuestionRadio extends StatefulWidget {
  QuestionRadio({required this.viewModel});

  final QuestionViewModel viewModel;

  @override
  State<QuestionRadio> createState() => _QuestionRadioState();
}

class _QuestionRadioState extends State<QuestionRadio> {
  @override
  Widget build(BuildContext context) {
    return CupertinoListSection(
      children: [
        CupertinoListTile(title: Text('this')),
        /*  for (
          int i = 0;
          i <
              widget
                  .viewModel
                  .questions[widget.viewModel.questionNumber - 1]
                  .options
                  .length;
          i++
        )
          CupertinoListTile(
            leading: CupertinoRadio(
              value: widget
                  .viewModel
                  .questions[widget.viewModel.questionNumber - 1]
                  .options[i]
                  .text,
            ),
            title: Text(
              widget
                  .viewModel
                  .questions[widget.viewModel.questionNumber - 1]
                  .options[i]
                  .text,
            ),
          ), */
      ],
    );
  }
}
