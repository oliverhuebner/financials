import 'package:go_router/go_router.dart';

import 'package:financials/ui/home/level/widgets/level_screen.dart';
import 'package:financials/ui/home/page/widgets/page_screen.dart';
import 'package:financials/ui/home/page/view_models/page_viewmodel.dart';
import 'package:financials/data/repositories/data_repository.dart';
import 'package:financials/data/services/data_service.dart';
import 'package:financials/ui/home/level_list/widgets/level_list_screen.dart';
import 'package:financials/ui/home/level_list/view_models/level_list_viewmodel.dart';
import 'package:financials/ui/home/question/widgets/question_screen.dart';
import 'package:financials/ui/home/question/view_models/question_viewmodel.dart';
import 'package:financials/ui/onboarding/sign_up/widgets/start_screen.dart';
import 'package:financials/ui/onboarding/sign_up/view_models/start_viewmodel.dart';

GoRouter router() => _router;
GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      name: 'level',
      path: '/level/:levelId',
      builder: (context, state) {
        final levelId = state.pathParameters['levelId']!;
        return LevelScreen(levelId: levelId);
      },
      routes: [
        GoRoute(
          name: 'page',
          path: '/page/:pageNumber',
          builder: (context, state) {
            final DataService service = DataService();
            String levelId = state.pathParameters['levelId']!;
            final DataRepository repository = DataRepository(
              dataService: service,
            );
            final pageNumber = state.pathParameters['pageNumber']!;
            final PageViewModel viewModel = PageViewModel(
              pages: [],
              pageNumber: int.parse(pageNumber),
              levelId: levelId,
              text: '',
              dataRepository: repository,
            );

            return PageScreen(viewModel: viewModel);
          },
        ),
        GoRoute(
          name: 'question',
          path: 'question/:questionNumber',
          builder: (context, state) {
            final DataService service = DataService();
            String levelId = state.pathParameters['levelId']!;
            final DataRepository repository = DataRepository(
              dataService: service,
            );
            final questionNumber = state.pathParameters["questionNumber"]!;
            final QuestionViewModel viewModel = QuestionViewModel(
              questions: [],
              questionNumber: int.parse(questionNumber),
              levelId: levelId,
              text: '',
              repository: repository,
            );
            return QuestionScreen(viewModel: viewModel);
          },
        ),
      ],
    ),
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, child) {
        final DataService service = DataService();
        final DataRepository repository = DataRepository(dataService: service);
        final LevelListViewModel viewModel = LevelListViewModel(
          dataRepository: repository,
          levels: [],
        );
        return LevelListScreen(viewModel: viewModel);
      },
    ),
    GoRoute(
      name: 'sign_up',
      path: '/sign_up',
      builder: (context, child) {
        final DataService service = DataService();
        final DataRepository repository = DataRepository(dataService: service);
        final StartViewModel viewModel = StartViewModel(
          dataRepository: repository,
        );
        return StartScreen(viewModel: viewModel);
      },
    ),
  ],
);
