
import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Películas en cines'),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon( Icons.search_outlined ),
            onPressed: () {},

          )
        ],
      ),

        body: SingleChildScrollView(
          child: Column(
            children: [

              // Tarjetas principales
              CardSwiper(),

              // Slider de películas
              MovieSlider(
                //   movies: moviesProvider.popularMovies,// populares,
                //   title: 'Populares', // opcional
                //   onNextPage: () => moviesProvider.getPopularMovies(),
              ),
              // MovieSlider(),
              // MovieSlider(),
              // MovieSlider(),
            ],
          ),
        )

    );
  }
}

