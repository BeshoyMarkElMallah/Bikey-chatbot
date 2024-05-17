import 'package:chatbot/Features/Chat/presentation/views/chat_view.dart';
import 'package:chatbot/Features/Splash/presentation/views/on_boarding_view.dart';
import 'package:chatbot/Features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnBoardingView = '/onBoardingView';
  static const kChatView = '/chatView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kChatView,
        builder: (context, state) => const ChatView(),
      ),

      // GoRoute(
      //   path: kResultView,
      //   builder: (context, state) => ResultsView(
      //     medicalRecordsModel: state.extra as Data,
      //   ),
      // ),
    ],
  );
}
