import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/constants.dart';
import 'package:store_app/core/utils/app_router.dart';
import 'package:store_app/core/utils/size_config.dart';

class PopularProductItem extends StatelessWidget {
  const PopularProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouter.kDetailesView);
      },
      child: SizedBox(
        width: getProportionateScreenWidth(140),
        child: Column(
          children: [
            Container(
              width: getProportionateScreenWidth(140),
              decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: AspectRatio(
                aspectRatio: 1.02,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset('assets/images/ps4_console_white_1.png'),
                ),
              ),
            ),
            const Gap(10),
            const Text(
              'Wirless Controller for PS4 Wirless Controller for PS4',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '64.99 \$',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: getProportionateScreenWidth(30),
                  height: getProportionateScreenHeight(30),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 17,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
