import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/constants.dart';
import 'package:store_app/core/utils/size_config.dart';

class CartListViewItem extends StatelessWidget {
  const CartListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            width: getProportionateScreenWidth(88),
            child: AspectRatio(
              aspectRatio: .88,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/images/Image Popular Product 1.png'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wirless Controller for PS4',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Gap(10),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: ' \$64.88  ',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'x2',
                        style: TextStyle(color: kTextColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
