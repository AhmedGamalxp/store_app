import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:store_app/features/cart/presentation/views/widgets/cart_listview_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => Dismissible(
          onDismissed: (direction) {},
          key: Key(index.toString()),
          direction: DismissDirection.endToStart,
          background: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffe6e6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  const Spacer(),
                  SvgPicture.asset(
                    'assets/icons/Trash.svg',
                    width: 20,
                  ),
                  const Gap(20),
                ],
              ),
            ),
          ),
          child: const CartListViewItem(),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemCount: 10,
      ),
    );
  }
}
