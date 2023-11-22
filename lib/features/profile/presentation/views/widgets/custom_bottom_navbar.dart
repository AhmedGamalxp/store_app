import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/constants.dart';
import 'package:store_app/core/utils/enums.dart';

class CustomBottmNavBar extends StatelessWidget {
  const CustomBottmNavBar({super.key, required this.selectedMenu});
  final MenuState selectedMenu;
  @override
  Widget build(BuildContext context) {
    const Color inActiveColor = Color(0xffb6b6b6);
    return Container(
      // height: 70,
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
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Shop Icon.svg',
           
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Heart Icon.svg',
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Cart Icon.svg',
               
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
               
              ),
            ),
          ],
        ),
      ),
    );
  }
}
