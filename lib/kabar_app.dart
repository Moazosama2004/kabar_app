import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:kabar_app/features/onboarding/presentation/view/onboarding_view.dart';

import 'core/routes/app_router.dart';
import 'core/routes/routes.dart';

class KabarApp extends StatelessWidget {
  const KabarApp({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: Routes.onBoardingView,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingView(),
    );
  }
}
