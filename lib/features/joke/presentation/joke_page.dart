import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/models/formz/formz_status.dart';
import '../domain/entities/single.dart';
import '../domain/entities/two_part.dart';
import 'bloc/joke_bloc.dart';

class JokePage extends StatelessWidget {
  const JokePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => JokeBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Always Smile :)'),
            centerTitle: true,
            elevation: 1,
            backgroundColor: Colors.indigoAccent,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<JokeBloc, JokeState>(
              builder: (context, state) {
                if (state.status == FormzStatus.pure) {
                  context.read<JokeBloc>().add(const JokeEvent.getJoke());
                  return const SizedBox();
                } else if (state.status == FormzStatus.submissionInProgress) {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(
                      backgroundColor: Colors.indigoAccent,
                    ),
                  );
                } else if (state.status == FormzStatus.submissionSuccess) {
                  final entity = state.entity;
                  if (entity is SingleJokeEntity) {
                    return Center(
                        child: Text(
                      entity.joke,
                      textAlign: TextAlign.center,
                    ));
                  } else if (entity is TwoPartJokeEntity) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            entity.setup,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            entity.delivery,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    );
                  } else {
                    return Center(child: Text(entity.toString()));
                  }
                } else {
                  return Center(child: Text(state.errorMessage));
                }
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(
            highlightElevation: 1,
            elevation: 1,
            backgroundColor: Colors.indigoAccent,
            onPressed: () {
              // return context.push('second', params: {'num': 35.toString()});

            context.read<JokeBloc>().add(JokeEvent.getJoke());
            },
            child: const Icon(Icons.refresh_rounded),
          ),
        );
      }),
    );
  }
}
