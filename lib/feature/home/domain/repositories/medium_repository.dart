import 'package:dartz/dartz.dart';
import 'package:web_portofolio/core/error/failures.dart';
import 'package:web_portofolio/feature/home/domain/entities/medium_entity.dart';

abstract class MediumRepository {
  Future<Either<Failure, List<MediumEntity>>> getMediumData();
}
