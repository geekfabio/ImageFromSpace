import 'package:clean_tdd/core/usecases/errors/failures.dart';
import 'package:clean_tdd/features/domain/entities/space_media_entity.dart';
import 'package:clean_tdd/features/domain/repositories/space_media_repository.dart';
import 'package:clean_tdd/features/domain/usecases/get_space_media_from_date_usecase.dart.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSpaceMediaRepository extends Mock implements ISpaceMediaRepository {}

void main() {
  late GetSpaceMediaFromDateUseCase useCase;
  late MockSpaceMediaRepository mockMediaRepository;

  setUp(() {
    mockMediaRepository = MockSpaceMediaRepository();
    useCase = GetSpaceMediaFromDateUseCase(mockMediaRepository);
  });

  final tSpaceMedia = SpaceMediaEntity(
      description:
          "Should get space media from for a give date from the repository",
      mediaType: "image",
      mediaUrl:
          "https://mars.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/01000/opgs/edr/fcam/FRB_486265257EDR_F0481570FHAZ00323M_.JPG",
      title: "FHAZ");
  final tShortDate = DateTime(2021, 05, 01);
  test('Should get space media from for a give date from the repository',
      () async {
    when(() => mockMediaRepository.getSpaceMediaFromDate(tShortDate))
        .thenAnswer((_) async => Right<Failure, SpaceMediaEntity>(tSpaceMedia));

    final result = await useCase(tShortDate);
    expect(result, Right(tSpaceMedia));
    verify(() => mockMediaRepository.getSpaceMediaFromDate(tShortDate))
        .called(1);
  });

  //final tServerFailure = NoParams();
  test('Should Failure on get space media ServerFailure', () async {
    when(() => mockMediaRepository.getSpaceMediaFromDate(tShortDate))
        .thenAnswer(
            (_) async => Left<Failure, SpaceMediaEntity>(ServerFailure()));

    final result = await useCase(tShortDate);
    expect(result, Left(ServerFailure()));
    verify(() => mockMediaRepository.getSpaceMediaFromDate(tShortDate))
        .called(1);
  });
}
