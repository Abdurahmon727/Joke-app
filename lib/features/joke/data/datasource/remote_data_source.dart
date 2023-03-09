import 'package:dio/dio.dart';
import 'package:joke_app/core/error/exeptions.dart';
import 'package:joke_app/core/error/failure.dart';
import 'package:joke_app/features/joke/data/models/joke.dart';
import 'package:joke_app/features/joke/data/models/single.dart';
import 'package:joke_app/features/joke/data/models/two_part.dart';

import '../../../../core/data/either.dart';

abstract class RemoteDataSource {
  final dio = Dio();
  Future<JokeModel> getJoke();
}

class RemoteDataSourceImpl extends RemoteDataSource {
  @override
  Future<JokeModel> getJoke() async {
    final Response response =
        await dio.get('https://v2.jokeapi.dev/joke/Any?safe-mode');
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      if (response.data["type"] == "single") {
        return SingleJokeModel.fromMap(response.data);
      } else if (response.data["type"] == "twopart") {
        return TwoPartJokeModel.fromMap(response.data);
      } else {
        throw ServerException(
            statusMessage: 'Invalid Joke type', statusCode: 399);
      }
    } else {
      throw ServerException(
          statusMessage: 'Invalid Status code',
          statusCode: response.statusCode!);
    }
  }
}
