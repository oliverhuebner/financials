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
    return RadioGroup(
      groupValue: widget.viewModel.answer,
      onChanged: (value) {
        widget.viewModel.updateAnswer(value);
        print(widget.viewModel.answer);
      },
      child: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, state) => CupertinoListSection(
          children: [
            CupertinoListTile(
              leading: CupertinoRadio(
                inactiveColor: widget.viewModel.answer == 'Yes'
                    ? CupertinoColors.activeBlue
                    : CupertinoColors.inactiveGray,
                value: 'Yes',
              ),
              title: Text('Yes'),
            ),
            CupertinoListTile(
              leading: CupertinoRadio(
                value: 'No',
                inactiveColor: widget.viewModel.answer == 'No'
                    ? CupertinoColors.activeBlue
                    : CupertinoColors.inactiveGray,
              ),
              title: Text('No'),
            ),
            /*    if (widget.viewModel.questions.isNotEmpty)
              for (
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
                ),
            if (widget.viewModel.questions.isEmpty)
              CupertinoListTile(title: Text('Error')), */
          ],
        ),
      ),
    );
  }
}
