import 'package:flutter/material.dart';
import 'package:store_app/features/profile/presentation/views/widgets/profile_list.dart';
import 'package:store_app/features/profile/presentation/views/widgets/profile_picture.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
