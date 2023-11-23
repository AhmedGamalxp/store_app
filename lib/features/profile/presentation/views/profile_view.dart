import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:store_app/core/constants.dart';
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
      // bottomNavigationBar:  CustomBottmNavBar(onTabChange: (index){},),
    );
  }
}
