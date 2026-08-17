import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../view_models/page_viewmodel.dart';

class PageScreen extends StatefulWidget {
  PageScreen({super.key, required this.viewModel});

  final PageViewModel viewModel;
  @override
  State<PageScreen> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListenableBuilder(
        listenable: widget.viewModel,
        builder: (context, child) => Stack(
          children: [
            Align(
              alignment: .topRight,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 50, 50, 0),
                child: Text(widget.viewModel.pageNumber.toString()),
              ),
            ),
            Center(
              child: Text(
                widget.viewModel.pages.isEmpty
                    ? ''
                    : widget
                          .viewModel
                          .pages[widget.viewModel.pageNumber - 1]
                          .text,
              ),
            ),
            Align(
              alignment: .bottomRight,
              child:
                  widget.viewModel.pageNumber == widget.viewModel.pages.length
                  ? CupertinoButton(
                      child: Text('Next'),
                      onPressed: () => context.goNamed(
                        'question',
                        pathParameters: {
                          'questionNumber': '1',
                          'levelId': widget.viewModel.levelId,
                        },
                      ),
                    )
                  : CupertinoButton(
                      child: Text('Next'),
                      onPressed: () {
                        widget.viewModel.nextPage();
                        context.goNamed(
                          'page',
                          pathParameters: {
                            'pageNumber': widget.viewModel.pageNumber
                                .toString(),
                            'levelId': widget.viewModel.levelId,
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
