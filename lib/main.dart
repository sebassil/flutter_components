import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: HomePage(),
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('es', 'ES'), // Hebrew, no country code
        const Locale.fromSubtags(
            languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],

      initialRoute: 'home',
      routes: getApplicationRoutes(),

      onGenerateRoute: (RouteSettings settings) {
        // print('ruta llamada ${settings.name} ');
        return MaterialPageRoute(
          builder: (context) => AlertPage(),
        );
      },
    );
  }
}
