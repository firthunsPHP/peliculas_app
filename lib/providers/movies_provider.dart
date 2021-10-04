import 'dart:async';
import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas_app/models/models.dart';

class MoviesProvider extends ChangeNotifier {

  // https://api.themoviedb.org/3/movie/now_playing?api_key=11ef11f90f5b6b6cc207ad6fd84fc7a3&language=es-ES&page=1
  final String _apiKey = '11ef11f90f5b6b6cc207ad6fd84fc7a3';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';


  MoviesProvider(){
    print('MoviesProvider initialized');
    getOnDisplayMovies();
  }


  getOnDisplayMovies() async{

    // https://developers.google.com/books/docs/overview
    var url =  Uri.https( _baseUrl, '3/movie/now_playing', {
     'api_key': _apiKey,
      'language': _language,
      'page': '1'
    });

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final nowPlayingResponse =  NowPlayingResponse.fromJson(response.body);

    print(nowPlayingResponse.results[1].title );

    // final Map<String, dynamic> decodeData = json.decode(response.body);
    //print(decodeData['results']);/



  }

}