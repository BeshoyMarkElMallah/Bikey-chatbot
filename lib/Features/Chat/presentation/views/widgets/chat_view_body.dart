import 'package:chatbot/Features/Chat/presentation/manager/cubit/chat_cubit_cubit.dart';
import 'package:chatbot/Features/Chat/presentation/views/widgets/custom_text_field_chat.dart';
import 'package:chatbot/constants.dart';
import 'package:chatbot/core/utils/assets.dart';
import 'package:chatbot/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: kPrimaryColor,
                size: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(AssetsData.robot),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Bikey',
                    style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.bold,
                        color: kGreyDark,
                        fontFamily: GoogleFonts.inriaSans().toString()),
                  ),
                ],
              ),
            ),

            // Chat Messages
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: BlocBuilder<ChatCubitCubit, ChatCubitState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .9,
                          height: MediaQuery.of(context).size.height * .6,
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                              if (context
                                  .read<ChatCubitCubit>()
                                  .messages[index]
                                  .isUser) {
                                return ChatBubble(
                                  clipper: ChatBubbleClipper4(
                                      type: BubbleType.sendBubble,
                                      nipSize: 10,
                                      radius: 10,
                                      offset: 20),
                                  alignment: Alignment.centerRight,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 20),
                                  backGroundColor: kChatBubbleSender,
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.63,
                                    ),
                                    child: Text(
                                      context
                                          .read<ChatCubitCubit>()
                                          .messages[index]
                                          .message,
                                      style: Styles.textStyle14.copyWith(
                                          color: kChatBubbleText,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: GoogleFonts.inriaSans()
                                              .toString()),
                                    ),
                                  ),
                                );
                              } else {
                                return ChatBubble(
                                  clipper: ChatBubbleClipper4(
                                      type: BubbleType.receiverBubble,
                                      nipSize: 10,
                                      radius: 10,
                                      offset: 20),
                                  alignment: Alignment.centerLeft,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  backGroundColor: kChatBubbleReceiver,
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.63,
                                    ),
                                    child: Text(
                                      context
                                          .read<ChatCubitCubit>()
                                          .messages[index]
                                          .message,
                                      style: Styles.textStyle14.copyWith(
                                          color: kChatBubbleText,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: GoogleFonts.inriaSans()
                                              .toString()),
                                    ),
                                  ),
                                );
                              }
                            },
                            itemCount:
                                context.read<ChatCubitCubit>().messages.length,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: CustomTextFieldChat())
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
