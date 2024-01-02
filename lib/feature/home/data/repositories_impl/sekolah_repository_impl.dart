import 'package:dartz/dartz.dart';
import 'package:web_portofolio/core/base/base_repository.dart';
import 'package:web_portofolio/core/error/failures.dart';
import 'package:web_portofolio/feature/home/data/datasources/remote/medium_remote_datasource.dart';
import 'package:web_portofolio/feature/home/domain/entities/medium_entity.dart';
import 'package:web_portofolio/feature/home/domain/mapper/medium_mapper.dart';
import 'package:web_portofolio/feature/home/domain/repositories/medium_repository.dart';

class MediumRepositoryImpl extends BaseRepository implements MediumRepository {
  final MediumRemoteDataSource _mediumRemoteDataSource;

  MediumRepositoryImpl(this._mediumRemoteDataSource);

  @override
  Future<Either<Failure, List<MediumEntity>>> getMediumData() async {
    return catchOrThrow(() async {
      final result = await _mediumRemoteDataSource.getMediumData();

      return List<MediumEntity>.from(result.map((e) => e.toEntity()));
    });
  }
}
