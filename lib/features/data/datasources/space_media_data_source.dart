import 'package:clean_tdd/core/usecases/errors/failures.dart';
import 'package:clean_tdd/features/data/models/space_media_model.dart';

abstract class ISpaceMediaDataSource {
  Future<SpaceMediaModel> getSpaceMediaFromDate(DateTime dateTime);
}
