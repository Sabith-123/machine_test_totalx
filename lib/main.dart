import 'package:flutter/material.dart';
import 'package:machine_test_totalx/viewmodels/user_provider.dart';
import 'package:machine_test_totalx/views/home_page.dart';
import 'package:machine_test_totalx/views/login_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final pref = await SharedPreferences.getInstance();
  final bool start = pref.getBool('start') ?? false;

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserProvider()..fetchData(),
        ),
      ],
      child: MyApp(start: start),
    ),
  );
}

class MyApp extends StatelessWidget {
  final bool start;
  const MyApp({super.key, required this.start});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Machine Test TotalX',
      home: start ? HomePage() : LoginPage(),
    );
  }
}