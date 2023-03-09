import 'dart:convert';

import 'joke.dart';

class SingleJokeModel extends JokeModel {
  final String joke;
  SingleJokeModel({
    required this.joke,
  });

  SingleJokeModel copyWith({
    String? joke,
  }) {
    return SingleJokeModel(
      joke: joke ?? this.joke,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'joke': joke,
    };
  }

  factory SingleJokeModel.fromMap(Map<String, dynamic> map) {
    return SingleJokeModel(
      joke: map['joke'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() => 'SingleJokeModel(joke: $joke)';

  @override
  bool operator ==(covariant SingleJokeModel other) {
    if (identical(this, other)) return true;

    return other.joke == joke;
  }

  @override
  int get hashCode => joke.hashCode;
}
