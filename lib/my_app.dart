import 'package:apptest/navigation/navigation_menu.dart';
import 'package:apptest/provider/carousel_slider_provider.dart';
import 'package:apptest/provider/product_type_provider.dart';
import 'package:apptest/utils/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => CarouselProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductTypeProvider(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(textTheme: TTextTheme.lightTextTheme),
        debugShowCheckedModeBanner: false,
        home: const NavigationMenu(),
      ),
    );
  }
}
