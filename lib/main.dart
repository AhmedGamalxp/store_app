import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_router.dart';
import 'package:store_app/core/utils/theme.dart';

void main() {
  runApp(const Marketo());
}

class Marketo extends StatelessWidget {
  const Marketo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: myTheme(),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
