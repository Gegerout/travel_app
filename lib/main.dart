import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:travel_app/auth/presentation/pages/signin_page.dart';
import 'package:travel_app/core/states/main_state.dart';
import 'package:travel_app/home/presentation/pages/home_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: ref.watch(mainProvider).when(
              data: (value) {
                if(value != null) {
                  return HomePage(name: value.data.firstName,);
                }
                return SigninPage();
              },
              error: (error, stacktrace) {
                return Center(
                  child: Text(error.toString()),
                );
              },
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  )),
        ));
  }
}
