import 'package:designs/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

      @override
      Widget build(BuildContext context) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor: const Color.fromRGBO(0, 0, 0, 0)));
        return MaterialApp(
                debugShowCheckedModeBanner: false,
          title: '',
            initialRoute: 'home_screen',
            routes: {
              'basic_design': ( _ ) => const BasicDesignScreen(),
              'scroll_screen': ( _ ) => const ScrollScreen(),
              'home_screen': ( _ ) => const HomeScreen()
            },
        );
      }
}
