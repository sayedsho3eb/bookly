import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection time out with api server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send time out with api server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive time out with api server');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate  with api server');

      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
          dioException.response!.statusCode!,
          dioException.response,
        );

      case DioExceptionType.cancel:
        return ServerFailure('requst  with api server was cancel');

      case DioExceptionType.connectionError:
        return ServerFailure(
          'connction error with api server , try again later',
        );
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('Unexpected Error , please try again later');
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Not found, please try again later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try later');
    } else {
      return ServerFailure('ops there was an error please try again later');
    }
  }
}
