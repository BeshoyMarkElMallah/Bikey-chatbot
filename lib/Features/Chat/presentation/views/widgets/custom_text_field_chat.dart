import 'package:chatbot/Features/Chat/data/models/message_model.dart';
import 'package:chatbot/Features/Chat/presentation/manager/cubit/chat_cubit_cubit.dart';
import 'package:chatbot/constants.dart';
import 'package:chatbot/core/utils/styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFieldChat extends StatelessWidget {
  const CustomTextFieldChat({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kGreyDark,
      controller: BlocProvider.of<ChatCubitCubit>(context).controller,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: const Icon(
            Icons.send,
            color: kPrimaryColor,
            size: 35,
          ),
          onPressed: () {
            BlocProvider.of<ChatCubitCubit>(context).talkWithGemini(
                BlocProvider.of<ChatCubitCubit>(context).controller.text);

            BlocProvider.of<ChatCubitCubit>(context).messages.add(MessageModel(
                isUser: true,
                message:
                    BlocProvider.of<ChatCubitCubit>(context).controller.text,
                date: DateTime.now()));
            BlocProvider.of<ChatCubitCubit>(context).controller.clear();
          },
        ),
        fillColor: kGreyHighlight,
        filled: true,
        hintText: 'Write your message here...',
        hintStyle: Styles.textStyle14.copyWith(
            color: kGreyLight,
            fontWeight: FontWeight.normal,
            fontFamily: GoogleFonts.inriaSans().toString()),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: kGreyHighlight, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(color: kGreyHighlight, width: 1),
        ),
      ),
    );
  }
}
