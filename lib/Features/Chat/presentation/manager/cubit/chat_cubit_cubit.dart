import 'package:bloc/bloc.dart';
import 'package:chatbot/Features/Chat/data/models/message_model.dart';
import 'package:chatbot/Features/Chat/data/remote_data_source.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'chat_cubit_state.dart';

class ChatCubitCubit extends Cubit<ChatCubitState> {
  ChatCubitCubit() : super(ChatCubitInitial());
  ChatRemoteDataSource chatRemoteDataSource = ChatRemoteDataSource();

  TextEditingController controller = TextEditingController();
  List<MessageModel> messages = [];

  Future<void> talkWithGemini(String prompt) async {
    emit(ChatCubitLoading());
    try {
      final response = await chatRemoteDataSource.talkWithGemini(prompt);
      messages.add(response);
      emit(ChatCubitLoaded(response));
    } catch (e) {
      emit(ChatCubitError(e.toString()));
    }
  }
}
