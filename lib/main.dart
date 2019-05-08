import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/newspage.dart';
import 'package:scoped_model/scoped_model.dart';
import './scoped-models/main.dart';
import './models/news.dart';
import './helper/custom_route.dart';
import './functions/responseve_function.dart';
//import './locale/locales.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import './translation/translation.dart';
import './translation/translation_strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //final MainModel _model = MainModel();
  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
        model: MainModel(),
        child: ScopedModelDescendant<MainModel>(
            builder: (BuildContext context, Widget child, MainModel model) =>
                MaterialApp(
                  locale: model.appLocal,
                  localizationsDelegates: [
                    const TranslationsDelegate(),
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                  ],
                  supportedLocales: [
                    const Locale('ar', ''), // Arabic
                    const Locale('en', ''), // English
                  ],
                  debugShowCheckedModeBanner: false,
                  //theme: new Color.fromRGBO(15, 22, 57, 1.0),
                  //title: "Arabic Flutter",
                  onGenerateTitle: (BuildContext context) =>
                      Translations.of(context).appTitle,
                  //theme: ThemeData(primarySwatch: Colors.indigo),
                  //title: 'Innosoft Task',
                  //home: AuthPage(),
                  routes: {
                    '/': (BuildContext cont) => Home(model, getResponseve),
                  },
                  onGenerateRoute: (RouteSettings settings) {
                    final List<String> pathElement = settings.name.split('/');
                    if (pathElement[0] != '') {
                      return null;
                    }
                    if (pathElement[1] == 'newsPage') {
                      final String latestNewsId = pathElement[2];
                      final LatestNews latestNews = model.allLatestNews
                          .firstWhere((LatestNews latestNews) {
                        return latestNews.id == latestNewsId;
                      });
                      return CustomeRoute<bool>(
                          builder: (BuildContext cont) =>
                              NewsPage(latestNews, getResponseve));
                    } else {
                      return MaterialPageRoute<bool>(
                          builder: (BuildContext cont) =>
                              Home(model, getResponseve));
                    }
                  },
                  onUnknownRoute: (RouteSettings settings) {
                    return MaterialPageRoute(
                        builder: (BuildContext cont) =>
                            Home(model, getResponseve));
                  },
                )));
  }
}
