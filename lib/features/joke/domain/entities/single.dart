import 'package:equatable/equatable.dart';

import 'joke.dart';

class SingleJokeEntity extends JokeEntity with EquatableMixin {
  final String joke;
  SingleJokeEntity({
    this.joke = '',
  });

  @override
  List<Object?> get props => [joke];
}
