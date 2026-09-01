import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../view_models/start_viewmodel.dart';

class StartButton extends StatefulWidget {
  const StartButton({required this.viewModel});

  final StartViewModel viewModel;

  @override
  State<StartButton> createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Text('Sign Up'),
      onPressed: () => context.goNamed('sign_up'),
    );
  }
}
