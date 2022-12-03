import 'package:core/core.dart';
import 'package:core/domain/entities/tv_series.dart';
import 'package:core/domain/entities/tv_series_detail.dart';
import 'package:dartz/dartz.dart';

abstract class TvSeriesRepository {
  Future<Either<Failure, List<TvSeries>>> getNowPlaying();
  Future<Either<Failure, List<TvSeries>>> getPopular();
  Future<Either<Failure, List<TvSeries>>> getTopRated();
  Future<Either<Failure, List<TvSeries>>> search(String query);
  Future<Either<Failure, List<TvSeries>>> getWatchlist();
  Future<Either<Failure, TvSeriesDetail>> getDetail(int id);
  Future<Either<Failure, List<TvSeries>>> getRecommendation(int id);
  Future<Either<Failure, String>> saveWatchlist(TvSeriesDetail tvSeries);
  Future<Either<Failure, String>> removeWatchlist(TvSeriesDetail movie);
  Future<bool> isAddedToWatchlist(int id);
}
