import 'package:flutter/material.dart';
import 'package:store_app/core/utils/app_router.dart';

void main() {
  runApp(const Marketo());
}

class Marketo extends StatelessWidget {
  const Marketo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
