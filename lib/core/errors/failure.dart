import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

abstract class Failure {
  final String err_msg;

  Failure(this.err_msg);
}

class server_failure extends Failure {
  server_failure(super.err_msg);
  factory server_failure.fromDioerror(DioException dioerror) {
    switch (dioerror.type) {
      case DioExceptionType.connectionTimeout:
        return server_failure('sorry there is connectionTimeout with our api ');
      case DioExceptionType.receiveTimeout:
        return server_failure('sorry there is connectionTimeout with our api ');
      case DioExceptionType.badResponse:
        return server_failure('sorry there is connectionTimeout with our api ');
      case DioExceptionType.sendTimeout:
        return server_failure('sorry there is connectionTimeout with our api ');
      case DioExceptionType.badCertificate:
        return server_failure('sorry there is badCertificate ');
      case DioExceptionType.cancel:
        return server_failure('sorry u cancel  ');
      case DioExceptionType.connectionError:
        return server_failure('sorry there is connectionError ');
      case DioExceptionType.unknown:
        if (dioerror.message!.contains('SocketException')) {
          return server_failure('no internet connecthion');
        }

        return server_failure('unxpected error ,Please try again!');
      default:
        return server_failure('oops there was in error ,Please try later!');
    }
  }
  factory server_failure.fromresponce(int statuecode, dynamic responce) {
    if (statuecode == 400 || statuecode == 401 || statuecode == 403) {
      return server_failure(responce['error']['message']);
    } else if (statuecode == 404) {
      return server_failure('Your request not found, Please try later! ');
    } else if (statuecode == 500) {
      return server_failure('internal server err , Please try later!  ');
    } else {
      return server_failure('oops there was in error ,Please try later!');
    }
  }
}
