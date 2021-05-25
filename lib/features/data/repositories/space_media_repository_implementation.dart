import 'package:clean_tdd/core/usecases/errors/exceptions.dart';
import 'package:clean_tdd/features/data/datasources/space_media_data_source.dart';
import 'package:clean_tdd/features/domain/entities/space_media_entity.dart';
import 'package:clean_tdd/core/usecases/errors/failures.dart';
import 'package:clean_tdd/features/domain/repositories/space_media_repository.dart';
import 'package:dartz/dartz.dart';

class SpaceMediaRepositoryImplementation implements ISpaceMediaRepository {
  final ISpaceMediaDataSource dataSource;

  SpaceMediaRepositoryImplementation(this.dataSource);

  @override
  Future<Either<Failure, SpaceMediaEntity>> getSpaceMediaFromDate(
      DateTime dateTime) async {
    try {
      final result = await dataSource.getSpaceMediaFromDate(dateTime);
      return right(result);
    } on ServerException {
      return left(ServerFailure());
    }
  }
}
