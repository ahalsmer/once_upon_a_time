import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:path_provider/path_provider.dart';

import 'package:once_upon_a_time/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // FirebaseMessaging.onBackgroundMessage(backgroundHandler);

  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // Bloc.observer = SimpleBlocObserver();
  runApp(const OnceUponATime());
}

class OnceUponATime extends StatelessWidget {
  const OnceUponATime({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Once Upon a Time',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Once Upon A Time'),
        ),
        body: const Center(
          child: Text('Derp'),
        ),
      ),
    );
    // return MultiRepositoryProvider(
    //   providers: [
    //     RepositoryProvider(
    //       create: (context) => UserRepository(),
    //     ),
    //     RepositoryProvider(
    //       create: (context) => AuthRepository(
    //         userRepository: context.read<UserRepository>(),
    //       ),
    //     ),
    //   ],
    //   child: MultiBlocProvider(
    //     providers: [
    //       BlocProvider(
    //         create: (context) => AuthBloc(
    //           authRepository: context.read<AuthRepository>(),
    //           userRepository: context.read<UserRepository>(),
    //         ),
    //       ),
    //       BlocProvider(
    //         create: (context) => UserBloc(
    //           authBloc: context.read<AuthBloc>(),
    //           userRepository: context.read<UserRepository>(),
    //           //   )..add(
    //           //       LoadUser(
    //           //         context.read<AuthBloc>().state.authUser,
    //           //       ),
    //         ),
    //       ),
    //       BlocProvider(
    //         create: (context) => BrightnessCubit(),
    //       ),
    //       BlocProvider(
    //         create: (context) => LoginCubit(
    //           authRepository: context.read<AuthRepository>(),
    //           userRepository: context.read<UserRepository>(),
    //         ),
    //       ),
    //       BlocProvider(
    //         create: (context) => SignUpCubit(
    //           authRepository: context.read<AuthRepository>(),
    //         ),
    //       ),
    //     ],
    //     child: BlocBuilder<BrightnessCubit, Brightness>(
    //       builder: (context, state) {
    //         return MaterialApp(
    //           debugShowCheckedModeBanner: false,
    //           theme: state == Brightness.dark ? darkTheme() : lightTheme(),
    //           initialRoute: SplashScreen.routeName,
    //           onGenerateRoute: AppRouter.onGenerateRoute,
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
