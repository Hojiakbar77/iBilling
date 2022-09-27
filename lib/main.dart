import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ibilling/Pages/contracts_pages.dart';
import 'package:ibilling/Pages/home_page.dart';
import 'package:ibilling/provider/lang_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale("uz"), Locale("ru"), Locale("en")],
      path: "assets/translation",
      startLocale: Locale("uz"),

      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => LangProvider(),
          ),
        ],
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const HomePage(),
    );
  }
}
