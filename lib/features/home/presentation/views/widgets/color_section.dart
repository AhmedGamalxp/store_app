import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:store_app/features/home/presentation/views/widgets/rounded_btn.dart';

class ColorSection extends StatefulWidget {
  const ColorSection({super.key});

  @override
  State<ColorSection> createState() => _ColorSectionState();
}

class _ColorSectionState extends State<ColorSection> {
  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(
              5,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedColor = index;
                  });
                },
                child: colorItem(index),
              ),
            ),
          ),
          const Row(
            children: [
              RoundedBTN(icon: Icons.add),
              Gap(
                16,
              ),
              RoundedBTN(icon: Icons.remove),
            ],
          ),
        ],
      ),
    );
  }

  Widget colorItem(int index) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Stack(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
              border: Border.all(
                color:
                    selectedColor == index ? Colors.black : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          Positioned(
            top: 5,
            left: 5,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
