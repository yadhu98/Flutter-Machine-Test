import 'package:flutter/material.dart';
import 'package:machine_test_flutter/modules/home/home_screen.dart';

import 'modules/chat/chat_screen.dart';
import 'modules/home/widgets/bottom_navbar.dart';
import 'modules/login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        fontFamily: 'Poppins',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: buildMaterialColor(Color(0xFF4CAF50)),
      ),
      home: const LoginScreen(),
      routes: {
        RootScreen.routeName: (ctx) => RootScreen(),
        LoginScreen.routeName: (ctx) => const LoginScreen(),
      },
      // home: const LoginScreen(),
    );
  }
}

class RootScreen extends StatelessWidget {
  final _pages = [HomeScreen(), ChatRoom(), HomeScreen(), ProfileScreen()];
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);

  static const routeName = 'main-screens';

  RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SafeArea(
          // child: HomeScreen(),
          child: ValueListenableBuilder(
              valueListenable: selectedIndexNotifier,
              builder: (BuildContext context, int updatedIndex, Widget? _) {
                return _pages[updatedIndex];
              }),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text('Logout'),
        onPressed: () {
          Navigator.of(context).pushNamed(LoginScreen.routeName);
        },
      ),
    );
  }
}
