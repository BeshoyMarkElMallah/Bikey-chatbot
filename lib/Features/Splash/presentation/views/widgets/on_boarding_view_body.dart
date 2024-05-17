import 'package:chatbot/constants.dart';
import 'package:chatbot/core/utils/app_router.dart';
import 'package:chatbot/core/utils/assets.dart';
import 'package:chatbot/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Your AI Assistant',
            style: Styles.textStyle20
                .copyWith(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Using this software, you can ask your questions and receive articles using artificial intelligence assistant',
            textAlign: TextAlign.center,
            style: Styles.textStyle18.copyWith(fontWeight: FontWeight.w100),
            // textScaleFactor: 1.5,
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset(AssetsData.onBoarding1),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go(AppRouter.kChatView);
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(MediaQuery.of(context).size.width * .7,
                      MediaQuery.of(context).size.height * .06),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
                  backgroundColor: kPrimaryColor,
                  textStyle: Styles.textStyle14,
                  foregroundColor: kWhite),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Spacer(),
                  Text("Continue"),
                  Spacer(),
                  Icon(Icons.arrow_forward),
                ],
              ))
        ],
      ),
    );
  }
}
