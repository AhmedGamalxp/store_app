import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_app/core/constants.dart';
import 'package:store_app/core/utils/size_config.dart';

class DescribtionSection extends StatelessWidget {
  const DescribtionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: getProportionateScreenWidth(200),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'Wirless Controller for PS4 Wirless Controller for PS4 Wirless Controller for PS4 ',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const Gap(10),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: getProportionateScreenWidth(50),
                height: getProportionateScreenWidth(40),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.2),
                  borderRadius: const BorderRadiusDirectional.only(
                    bottomStart: Radius.circular(15),
                    topStart: Radius.circular(15),
                  ),
                ),
                child: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 20,
                ),
              ),
            ),
            const Gap(10),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                'Wirless Controller for PS4 Wirless Controller for PS4 Wirless Controller for PS4 Wirless Controller for PS4 Wirless Controller for PS4 v v vWirless Controller for PS4 Wirless Wirless v vWirless',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(height: 1.5),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See More detailes >',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
