import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testtest/domain/repository.dart';
import 'package:testtest/screens/auth_screen/cubit/auth_cubit.dart';
import 'package:testtest/utils/di/getit_init.dart';
import 'package:testtest/utils/route/route.dart';


class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List<BlocProvider> providers = [
    BlocProvider<AuthCubit>(
      create: (BuildContext context) =>
          AuthCubit(repository: getIt<Repository>()),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final route = getIt<AppRoute>().appRoute;
    return MultiBlocProvider(
      providers: providers,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: route,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
