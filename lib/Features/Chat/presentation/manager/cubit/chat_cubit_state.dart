part of 'chat_cubit_cubit.dart';

@immutable
sealed class ChatCubitState {}

final class ChatCubitInitial extends ChatCubitState {}

final class ChatCubitLoading extends ChatCubitState {}

final class ChatCubitLoaded extends ChatCubitState {
  final MessageModel response;

  ChatCubitLoaded(this.response);
}

final class ChatCubitError extends ChatCubitState {
  final String message;

  ChatCubitError(this.message);
}
