import 'package:flutter/material.dart';
import 'package:movie_app/model/genre.dart';
import 'package:movie_app/model/movie_detail.dart';

class MovieDetailResponse {
  final MovieDetail movieDetail;
  final String error;

  MovieDetailResponse(this.movieDetail, this.error);

  MovieDetailResponse.fromJson(Map<String, dynamic> json)
  : movieDetail = MovieDetail.fromJson(json),
    error = "";

  MovieDetailResponse.withError(String errorValue)
  :movieDetail = MovieDetail(null.toString() as int, null.toString() as bool, null.toString() as int, null.toString() as List<Genre>, null.toString(), null.toString() as int),
    error = errorValue;
}