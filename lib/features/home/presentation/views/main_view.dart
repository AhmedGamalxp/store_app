import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/utils/bottom_navbar_lists.dart';
import 'package:store_app/core/utils/services_locator.dart';
import 'package:store_app/core/utils/size_config.dart';
import 'package:store_app/features/cart/presentation/controllers/cart_cubit/cart_cubit.dart';
import 'package:store_app/features/favorites/presentation/controllers/cubit/favorite_cubit.dart';
import 'package:store_app/features/home/data/repos/home_repo_impl.dart';
import 'package:store_app/features/home/presentation/controllers/all_product_cubit/all_product_cubit.dart';
import 'package:store_app/features/profile/presentation/views/widgets/custom_bottom_navbar.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int curruntIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      extendBody: true,
      body: screens[curruntIndex],
      bottomNavigationBar: CustomBottmNavBar(
        onTabChange: (index) {
          setState(() {
            curruntIndex = index;
          });
        },
      ),
    );
    //  );
  }
}
