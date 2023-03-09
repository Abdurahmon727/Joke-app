import 'package:equatable/equatable.dart';

import 'joke.dart';

class TwoPartJokeEntity extends JokeEntity with EquatableMixin {
  final String setup;
  final String delivery;

  TwoPartJokeEntity({this.setup = '', this.delivery = ''});

  @override
  List<Object?> get props => [setup, delivery];
}
