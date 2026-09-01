import 'package:flutter/cupertino.dart';
import 'package:financials/ui/onboarding/sign_up/view_models/start_viewmodel.dart';
import 'package:financials/ui/onboarding/sign_up/widgets/start_button.dart';

class StartScreen extends StatelessWidget {
  StartScreen({required this.viewModel});

  final StartViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(children: [StartButton(viewModel: viewModel)]),
    );
  }
}
