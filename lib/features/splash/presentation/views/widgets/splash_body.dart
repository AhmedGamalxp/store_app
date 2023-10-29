import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store_app/core/constants.dart';
import 'package:store_app/core/utils/app_router.dart';
import 'package:store_app/core/utils/size_config.dart';
import 'package:store_app/core/widgets/custom_botton.dart';
import 'package:store_app/features/splash/presentation/views/widgets/splash_item.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: PageView.builder(
                onPageChanged: (value) => setState(() {
                  currentIndex = value;
                }),
                physics: const BouncingScrollPhysics(),
                itemCount: splashData.length,
                itemBuilder: (context, index) {
                  return SplashItem(
                    text: splashData[index]['text'].toString(),
                    image: splashData[index]['image'].toString(),
                  );
                },
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      splashData.length, (index) => dotItem(index)),
                ),
                const Spacer(
                  flex: 3,
                ),
                CustomBotton(
                  text: 'Continue',
                  onPressed: () {
                    if (currentIndex == splashData.length) {
                      context.push(AppRouter.kHomeView);
                    }
                  },
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  AnimatedContainer dotItem(int index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      width: currentIndex == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentIndex == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
      duration: kAnimationDuration,
    );
  }
}
