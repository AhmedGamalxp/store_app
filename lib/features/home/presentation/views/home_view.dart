import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/utils/services_locator.dart';
import 'package:store_app/core/utils/size_config.dart';
import 'package:store_app/features/home/data/repos/home_repo_impl.dart';
import 'package:store_app/features/home/presentation/controllers/all_product_cubit/all_product_cubit.dart';
import 'package:store_app/features/home/presentation/views/widgets/categories.dart';
import 'package:store_app/features/home/presentation/views/widgets/discount_banner.dart';
import 'package:store_app/features/home/presentation/views/widgets/home_appBar.dart';
import 'package:store_app/features/home/presentation/views/widgets/popular_product_item.dart';
import 'package:store_app/features/home/presentation/views/widgets/popular_product_item2.dart';
import 'package:store_app/features/home/presentation/views/widgets/popular_product_listview.dart';
import 'package:store_app/features/home/presentation/views/widgets/section_title.dart';
import 'package:store_app/features/home/presentation/views/widgets/special_offer_listview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBody: true,

      body: Column(
        children: [
          const HomeViewAppBar(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 80),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  const DiscountBanner(),
                  Gap(getProportionateScreenWidth(20)),
                  const Categories(),
                  Gap(getProportionateScreenWidth(20)),
                  SectionTiTle(title: 'Popular products', ontap: () {}),
                  const PopularProductsListview(),
                  Gap(getProportionateScreenWidth(20)),
                ],
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: const CustomBottmNavBar(),
    );
  }
}
