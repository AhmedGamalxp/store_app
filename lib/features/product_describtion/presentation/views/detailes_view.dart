import 'package:flutter/material.dart';
import 'package:store_app/features/product_describtion/presentation/views/widgets/addtocart_section.dart';
import 'package:store_app/features/product_describtion/presentation/views/widgets/color_section.dart';
import 'package:store_app/features/product_describtion/presentation/views/widgets/custom_appbar.dart';
import 'package:store_app/features/product_describtion/presentation/views/widgets/describtion_section.dart';
import 'package:store_app/features/product_describtion/presentation/views/widgets/product_images.dart';

class DetailesView extends StatelessWidget {
  const DetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      body: Column(
        children: [
          CustomAppBar(),
          ProductImages(),
          DescribtionSection(),
          ColorSection(),
          AddToCartSection(),
        ],
      ),
    );
  }
}
