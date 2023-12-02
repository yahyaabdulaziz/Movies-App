import 'dart:convert';
import 'package:http/http.dart';
import 'package:movie/model/recommended_response.dart';

abstract class DetailsApiManger {
  static const String baseUrl = "api.themoviedb.org";
  static const String apiKey = "c40915bb91d27f2f1cfdcaac2cd3eadc";

  static Future<List<Results>> getSimilar(String movieId) async {
    Uri url =
        Uri.parse("https://$baseUrl/3/movie/$movieId/similar?apiKey=$apiKey");
    Response response = await get(url);
    Map json = jsonDecode(response.body);
    RecommendedResponse similarResponse = RecommendedResponse.fromJson(json);
    if (response.statusCode >= 200 &&
        response.statusCode < 300 &&
        similarResponse.results?.isNotEmpty == true) {
      return similarResponse.results!;
    }
    throw Exception(similarResponse.status_message);
  }
}
