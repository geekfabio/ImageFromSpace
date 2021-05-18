import 'package:clean_tdd/core/usecases/errors/failures.dart';
import 'package:clean_tdd/features/domain/entities/space_media_entity.dart';
import 'package:clean_tdd/features/domain/repositories/space_media_repository.dart';
import 'package:dartz/dartz.dart';

abstract class ISpaceMediaDataSource implements ISpaceMediaRepository {
  ///IMPLEMENTES METHOD TO OUT OFF RED FACE

  @override
  Future<Either<Failure, SpaceMediaEntity>> GetSpaceMediaFromDate(
      DateTime dateTime) {
    // TODO: implement GetSpaceMediaFromDate
    throw UnimplementedError();
  }
}
