import 'package:flutter/material.dart';
import 'package:store_app/core/constants.dart';
import 'package:store_app/core/utils/size_config.dart';

final List<String> images = [
  'assets/images/ps4_console_white_1.png',
  'assets/images/ps4_console_white_2.png',
  'assets/images/ps4_console_white_3.png',
  'assets/images/ps4_console_white_4.png',
];

class ProductImages extends StatefulWidget {
  const ProductImages({super.key});

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: getProportionateScreenWidth(220),
          child: AspectRatio(
            aspectRatio: 1.3,
            child: Image.asset(images[selected]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            images.length,
            (index) => Padding(
              padding: const EdgeInsets.all(8),
              child: GestureDetector(
                onTap: () => setState(() {
                  selected = index;
                }),
                child: Container(
                  width: getProportionateScreenWidth(50),
                  height: getProportionateScreenWidth(50),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: selected == index
                          ? kPrimaryColor
                          : Colors.transparent,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6),
                    child: Image.asset(images[index]),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
