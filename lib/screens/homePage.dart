import 'package:acropolis_test/bloc/login_bloc.dart';
import 'package:acropolis_test/widgets/categotyWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text('Flutter Tabs Demo'),
              actions: [
                TextButton(
                    onPressed: () {
                      context.read<LoginBloc>().add(LogOutEvent());
                    },
                    child: Text('LogOut',
                        style: TextStyle(
                          color: Colors.white,
                        )))
              ],
              bottom: TabBar(
                tabs: [
                  Tab(text: "Entertainment"),
                  Tab(text: "Books"),
                  Tab(
                    text: 'Apps',
                  )
                ],
              ),
            ),
            body: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Category(imageAsset: 'assets/images/entr.jpg'),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Category(imageAsset: 'assets/images/entr.jpg'),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Category(imageAsset: 'assets/images/book.jpg'),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Category(imageAsset: 'assets/images/book.jpg'),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Category(imageAsset: 'assets/images/app.jpg'),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Category(imageAsset: 'assets/images/app.jpg')
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
