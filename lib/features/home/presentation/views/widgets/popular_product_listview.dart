import 'package:flutter/material.dart';
import 'package:store_app/core/utils/size_config.dart';
import 'package:store_app/features/home/presentation/views/widgets/popular_product_item.dart';

class PopularProductsListview extends StatelessWidget {
  const PopularProductsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(220),
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 20),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const PopularProductItem();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        },
        itemCount: 4,
      ),
    );
  }
}
