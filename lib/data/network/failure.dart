import 'package:clean_architecture/data/network/error_handler.dart';

class Failure {
  final int code; // 200 or 400
  final String message; // error or success

  const Failure({
    required this.code,
    required this.message,
  });
}

class DefaultFailure extends Failure {
  const DefaultFailure()
      : super(code: ResponseCode.DEFAULT, message: ResponseMessage.DEFAULT);
}
