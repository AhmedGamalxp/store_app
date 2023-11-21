import 'package:flutter/material.dart';
import 'package:store_app/core/utils/size_config.dart';

class RoundedBTN extends StatelessWidget {
  const RoundedBTN({super.key, this.ontap, required this.icon});
  final void Function()? ontap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: getProportionateScreenWidth(40),
        height: getProportionateScreenWidth(40),
        decoration:
            const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: Icon(icon),
      ),
    );
  }
}
