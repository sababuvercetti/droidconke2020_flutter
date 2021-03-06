import 'package:dio/dio.dart';
import 'package:droidconke2020_flutter/config/api.dart';
import 'package:droidconke2020_flutter/models/models.dart';
import 'package:droidconke2020_flutter/utils/rest_client.dart';
import 'package:get_it/get_it.dart';

class SpeakersService {
  static Future<List<Speaker>> fetchAll() async {
    String url = '${ApiConfig.serverUrl}events/${ApiConfig.eventSlug}/speakers';
    Response response = await GetIt.I<RestClient>().dio.get(url); //TODO: Consider caching the request for a few minutes
    return response.data['data']
        .map<Speaker>((e) => Speaker.fromJson(e))
        .toList();
  }
}
