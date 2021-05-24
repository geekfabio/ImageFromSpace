import 'package:dartz/dartz.dart';
import 'package:clean_tdd/features/domain/entities/space_media_entity.dart';
import 'package:clean_tdd/core/usecases/errors/failures.dart';

abstract class ISpaceMediaRepository {
  Future<Either<Failure, SpaceMediaEntity>> getSpaceMediaFromDate(
      DateTime dateTime);
}
