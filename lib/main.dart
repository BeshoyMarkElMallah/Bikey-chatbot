import 'package:chatbot/Features/Chat/presentation/manager/cubit/chat_cubit_cubit.dart';
import 'package:chatbot/constants.dart';
import 'package:chatbot/core/utils/app_router.dart';
import 'package:chatbot/mu_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChatCubitCubit(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
            scaffoldBackgroundColor: kBackgroundColor,
            primaryColor: kWhite,
            textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(foregroundColor: kWhite))),
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
