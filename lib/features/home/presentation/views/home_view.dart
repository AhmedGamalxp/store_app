import 'package:flutter/material.dart';
import 'package:store_app/features/home/presentation/views/widgets/home_appBar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeViewAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
