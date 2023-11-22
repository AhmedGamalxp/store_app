import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/constants.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: kSecondaryColor.withOpacity(0.1),
            radius: 50,
            child: SvgPicture.asset(
              'assets/icons/User.svg',
              width: 50,
              height: 50,
              color: kPrimaryColor,
            ),
          ),
          Positioned(
            bottom: -5,
            right: -10,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {},
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  color: kSecondaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: kTextColor,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
