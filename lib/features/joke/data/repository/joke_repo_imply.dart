import '../../../../core/data/either.dart';
import '../../../../core/data/network_info.dart';
import '../../../../core/error/exeptions.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entities/joke.dart';
import '../../domain/repositories/joke_repo.dart';
import '../datasource/remote_data_source.dart';
import '../models/adapter.dart';
import '../models/single.dart';
import '../models/two_part.dart';

class JokeRepositoryImpl extends JokeRepository {
  final NetworkInfo _networkInfo = const NetworkInfoImpl();
  final RemoteDataSource _remoteDataSource = RemoteDataSourceImpl();
  @override
  Future<Either<Failure, JokeEntity>> getJoke() async {
    if (await _networkInfo.connected) {
      try {
        final data = await _remoteDataSource.getJoke();
        if (data is SingleJokeModel) {
          return Right(Adapter.singleModelToEntity(data));
        } else if (data is TwoPartJokeModel) {
          return Right(Adapter.twoPartModelToEntity(data));
        } else {
          throw const ServerFailure();
        }
      } on ServerException {
        rethrow;
      } catch (e) {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    } else {
      return Left(const ServerFailure(errorMessage: 'No Internet :('));
    }
  }
}
