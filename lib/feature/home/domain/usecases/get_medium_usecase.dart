import 'package:dartz/dartz.dart';
import 'package:web_portofolio/core/error/failures.dart';
import 'package:web_portofolio/core/usecases/usecase.dart';
import 'package:web_portofolio/feature/home/domain/entities/medium_entity.dart';
import 'package:web_portofolio/feature/home/domain/repositories/medium_repository.dart';

class GetMediumUseCase implements UseCase<List<MediumEntity>, NoParams> {
  GetMediumUseCase(this._repository);

  final MediumRepository _repository;

  @override
  Future<Either<Failure, List<MediumEntity>>> call(NoParams noParams) {
    return _repository.getMediumData();
  }
}
