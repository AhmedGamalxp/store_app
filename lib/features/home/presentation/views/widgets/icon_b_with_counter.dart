import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/constants.dart';
import 'package:store_app/core/utils/size_config.dart';

class IconBWithCounter extends StatelessWidget {
  const IconBWithCounter({
    super.key,
    required this.numberOfItem,
    required this.svgPicture,
    this.onTap,
  });
  final int numberOfItem;
  final String svgPicture;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: getProportionateScreenWidth(50),
            height: getProportionateScreenHeight(50),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.1),
                shape: BoxShape.circle),
            child: Padding(
              padding: EdgeInsets.all(getProportionateScreenWidth(14)),
              child: SvgPicture.asset(
                svgPicture,
              ),
            ),
          ),
          if (numberOfItem != 0)
            Positioned(
                right: 0,
                top: -3,
                child: Container(
                  width: getProportionateScreenWidth(20),
                  height: getProportionateScreenHeight(20),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xffff8484),
                      border: Border.all(width: 2, color: Colors.white)),
                  child: Center(
                    child: Text(
                      '$numberOfItem',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(10),
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 1,
                      ),
                    ),
                  ),
                )),
        ],
      ),
    );
  }
}
