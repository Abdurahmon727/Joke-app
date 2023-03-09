import '../../../../core/data/either.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/repository/joke_repo_imply.dart';
import '../entities/joke.dart';
import '../repositories/joke_repo.dart';

class GetJokeUseCase implements UseCase<JokeEntity, NoParams> {
  final JokeRepository repository = JokeRepositoryImpl();

  @override
  Future<Either<Failure, JokeEntity>> call(NoParams params) {
    return repository.getJoke();
  }
}
