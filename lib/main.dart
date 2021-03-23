import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'src/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        final FocusScopeNode focus = FocusScope.of(context);
        if(!focus.hasPrimaryFocus) {
          focus.unfocus();
        }
      },
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'), // English, no country code
          const Locale('es', 'ES'),
        ],
        title: 'Dataflex ERP',
        theme: ThemeData(
          primaryColor: Color(0xff1C83CE),
          accentColor: Color(0xff1C83CE),
          fontFamily: "Quicksand",
        ),
        initialRoute: 'login',
        routes: getApplicationRoutes(),
      ),
    );
  }
}