import 'dart:convert';

import 'package:http/http.dart';
import 'package:movie/model/popular_response.dart';
import 'package:movie/model/recommended_response.dart' as recommended;

import '../../model/newrelease_response.dart' as newrelease;

abstract class HomeApiManger {
  static const String baseUrl = "api.themoviedb.org";
  static const String apiKey = "c40915bb91d27f2f1cfdcaac2cd3eadc";
  static const String popularEndPoint = "/3/movie/popular";
  static const String newReleaseEndPoint = "/3/movie/upcoming";
  static const String recommendedEndPoint = "/3/movie/top_rated";

  static Future<List<Results>> getPopularFilm() async {
    Uri url = Uri.parse("https://$baseUrl$popularEndPoint?api_key=$apiKey");
    Response serverResponse = await get(url);
    Map json = jsonDecode(serverResponse.body);
    PopularResponse popularResponse = PopularResponse.fromJson(json);
    if (serverResponse.statusCode >= 200 &&
        serverResponse.statusCode < 300 &&
        popularResponse.results?.isNotEmpty == true) {
      return popularResponse.results!;
    }
    throw Exception(popularResponse.status_message);
  }

  static Future<List<newrelease.Results>> getNewReleaseMovie() async {
    Uri url = Uri.parse("https://$baseUrl$newReleaseEndPoint?api_key=$apiKey");
    Response serverResponse = await get(url);
    Map json = jsonDecode(serverResponse.body);
    newrelease.NewReleaseResponse releaseResponse =
        newrelease.NewReleaseResponse.fromJson(json);
    if (serverResponse.statusCode >= 200 &&
        serverResponse.statusCode < 300 &&
        releaseResponse.results?.isNotEmpty == true) {
      return releaseResponse.results!;
    }
    throw Exception(releaseResponse.status_message);
  }

  static Future<List<recommended.Results>> getNewRecommendedMovie() async {
    Uri url = Uri.parse(
        "https://api.themoviedb.org/3/movie/top_rated?api_key=c40915bb91d27f2f1cfdcaac2cd3eadc");
    Response serverResponse = await get(url);
    Map json = jsonDecode(serverResponse.body);
    recommended.RecommendedResponse recommendedResponse =
        recommended.RecommendedResponse.fromJson(json);
    if (serverResponse.statusCode >= 200 &&
        serverResponse.statusCode < 300 &&
        recommendedResponse.results?.isNotEmpty == true) {
      return recommendedResponse.results!;
    }
    throw Exception(recommendedResponse.status_message);
  }
}
