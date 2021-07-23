import 'package:acropolis_test/bloc/login_bloc.dart';
import 'package:acropolis_test/screens/homePage.dart';
import 'package:acropolis_test/screens/loginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LoginBloc(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: LibraryApp(),
          ),
        ));
  }
}

class LibraryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        if (state is LoginInitial) {
          return LoginScreen();
        }
        if (state is LoginSuccess) {
          return HomePage();
        }
        if (state is LogOutState) {
          return LoginScreen();
        }
        return CircularProgressIndicator();
      },
    );
  }
}
