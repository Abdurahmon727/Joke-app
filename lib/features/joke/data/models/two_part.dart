import 'dart:convert';

import 'package:joke_app/features/joke/data/models/joke.dart';

class TwoPartJokeModel extends JokeModel {
  final String setup;
  final String delivery;
  TwoPartJokeModel({
    required this.setup,
    required this.delivery,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'setup': setup,
      'delivery': delivery,
    };
  }

  factory TwoPartJokeModel.fromMap(Map<String, dynamic> map) {
    return TwoPartJokeModel(
      setup: map['setup'] as String,
      delivery: map['delivery'] as String,
    );
  }

  String toJson() => json.encode(toMap());
}
