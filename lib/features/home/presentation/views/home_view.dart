import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/utils/size_config.dart';
import 'package:store_app/features/home/presentation/views/widgets/categories.dart';
import 'package:store_app/features/home/presentation/views/widgets/discount_banner.dart';
import 'package:store_app/features/home/presentation/views/widgets/home_appBar.dart';
import 'package:store_app/features/home/presentation/views/widgets/popular_product_listview.dart';
import 'package:store_app/features/home/presentation/views/widgets/section_title.dart';
import 'package:store_app/features/home/presentation/views/widgets/special_offer_card.dart';
import 'package:store_app/features/home/presentation/views/widgets/special_offer_listview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Gap(getProportionateScreenWidth(10)),
              const HomeViewAppBar(),
              Gap(getProportionateScreenWidth(20)),
              const DiscountBanner(),
              Gap(getProportionateScreenWidth(20)),
              const Categories(),
              Gap(getProportionateScreenWidth(20)),
              SectionTiTle(title: 'Special for you', ontap: () {}),
              Gap(getProportionateScreenWidth(20)),
              const SpecialOfferListView(),
              Gap(getProportionateScreenWidth(20)),
              SectionTiTle(title: 'Popular products', ontap: () {}),
              Gap(getProportionateScreenWidth(20)),
              const PopularProductsListview(),
              Gap(getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ),
    );
  }
}
