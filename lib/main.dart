import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'pages/index/index.dart';
import 'constants/index.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final httpLink = HttpLink(uri: 'https://moon.opal.live/');
    
    final client = ValueNotifier<GraphQLClient>(
      GraphQLClient(
        link: httpLink,
        cache: OptimisticCache(
          dataIdFromObject: typenameDataIdFromObject,
        ),
      ),
    );

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => DefaultTextStyle(
            child: HomePage(), style: KfontConstant.defaultStyle),
      },
      theme: ThemeData(primarySwatch: Colors.blue),
       debugShowCheckedModeBanner: false,
    );
  }
}