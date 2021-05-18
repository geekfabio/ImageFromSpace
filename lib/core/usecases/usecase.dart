import 'package:dartz/dartz.dart';

import 'errors/failures.dart';

abstract class UseCase<Output, Input> {
  Future<Either<Failure, Output>> call(DateTime input);
}
