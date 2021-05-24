import 'package:clean_tdd/core/usecases/errors/failures.dart';
import 'package:clean_tdd/core/usecases/usecase.dart';
import 'package:clean_tdd/features/domain/entities/space_media_entity.dart';
import 'package:clean_tdd/features/domain/repositories/space_media_repository.dart';
import 'package:dartz/dartz.dart';

class GetSpaceMediaFromDateUseCase
    implements UseCase<SpaceMediaEntity, DateTime> {
  final ISpaceMediaRepository repository;

  GetSpaceMediaFromDateUseCase(this.repository);

  @override
  Future<Either<Failure, SpaceMediaEntity>> call(DateTime date) async {
    return await repository.getSpaceMediaFromDate(date);
  }
}
