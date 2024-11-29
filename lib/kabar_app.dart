import 'package:flutter/material.dart';

import 'core/routes/app_router.dart';
import 'core/routes/routes.dart';

class KabarApp extends StatelessWidget {
  const KabarApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: Routes.homeView,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(),
      ),
    );
  }
}
