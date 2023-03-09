import 'package:joke_app/features/joke/data/models/single.dart';
import 'package:joke_app/features/joke/data/models/two_part.dart';
import 'package:joke_app/features/joke/domain/entities/single.dart';
import 'package:joke_app/features/joke/domain/entities/two_part.dart';

abstract class Adapter {
  static SingleJokeEntity singleModelToEntity(SingleJokeModel model) {
    return SingleJokeEntity(joke: model.joke);
  }

  static TwoPartJokeEntity twoPartModelToEntity(TwoPartJokeModel model) {
    return TwoPartJokeEntity(delivery: model.delivery, setup: model.setup);
  }
}
