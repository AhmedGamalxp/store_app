import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/core/constants.dart';
import 'package:store_app/core/utils/size_config.dart';
import 'package:store_app/core/widgets/custom_botton.dart';

class BottonBar extends StatelessWidget {
  const BottonBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, -10),
            blurRadius: 20,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: getProportionateScreenWidth(40),
                  height: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kSecondaryColor.withOpacity(0.1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      'assets/icons/receipt.svg',
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kSecondaryColor.withOpacity(0.1),
                  ),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios),
                      ),
                      enabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      hintText: 'Add voncher code',
                      hintStyle: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Total :\n',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextSpan(
                        text: '\$ 338.99',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: CustomBotton(
                    text: 'Check Out',
                    onPressed: () {},
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
