import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:store_app/core/constants.dart';
import 'package:store_app/core/utils/enums.dart';
import 'package:store_app/features/profile/presentation/views/widgets/custom_bottom_navbar.dart';
import 'package:store_app/features/profile/presentation/views/widgets/profile_list.dart';
import 'package:store_app/features/profile/presentation/views/widgets/profile_picture.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfilePicture(),
          ProfileList(),
        ],
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(20),
      //   child: Container(
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(28),
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.black.withOpacity(0.1),
      //           blurRadius: 20,
      //         ),
      //       ],
      //     ),
      //     child: Padding(
      //       padding: const EdgeInsets.all(8),
      //       child: GNav(
      //         tabBackgroundColor: kPrimaryColor.withOpacity(0.2),
      //         color: kTextColor,
      //         activeColor: kPrimaryColor,
      //         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      //         gap: 10,
      //         tabs: const [
      //           GButton(
      //             icon: LineIcons.home,
      //             text: 'Home',
      //           ),
      //           GButton(
      //             icon: LineIcons.heart,
      //             text: 'Likes',
      //           ),
      //           GButton(
      //             icon: LineIcons.shoppingBasket,
      //             text: 'Cart',
      //           ),
      //           GButton(
      //             icon: LineIcons.user,
      //             text: 'Profile',
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      // bottomNavigationBar: const CustomBottmNavBar(
      //   selectedMenu: MenuState.profile,
      // ),
    );
  }
}
