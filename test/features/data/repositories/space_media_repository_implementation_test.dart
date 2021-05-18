import 'package:clean_tdd/features/data/datasources/space_media_data_source.dart';
import 'package:clean_tdd/features/data/models/space_media_model.dart';
import 'package:clean_tdd/features/data/repositories/space_media_repository_implementation.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockISpaceMediaSource extends SpaceMediaRepositoryImplementation
    implements Mock {}

void main() {
  late SpaceMediaRepositoryImplementation repository;
  late ISpaceMediaDataSource dataSource;

  setUp(() {
    dataSource = MockISpaceMediaSource();
    repository = SpaceMediaRepositoryImplementation(dataSource);
  });

  final tShortDate = DateTime(2021, 05, 01);
  final tSpaceMediaModel = SpaceMediaModel(
      description:
          "Should get space media from for a give date from the repository",
      mediaType: "image",
      mediaUrl:
          "https://mars.nasa.gov/msl-raw-images/proj/msl/redops/ods/surface/sol/01000/opgs/edr/fcam/FRB_486265257EDR_F0481570FHAZ00323M_.JPG",
      title: "FHAZ");
  test('Should get return data model when call datasource', () async {
    when(() => dataSource.GetSpaceMediaFromDate(tShortDate))
        .thenAnswer((_) async => Right(tSpaceMediaModel));
  });
}
