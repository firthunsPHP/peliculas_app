

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/widgets.dart';


/// stl + 'tab'
/// control Ventana pantalla
class DetailsScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    // todo: cambiar luego por una instancia de movie
    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),
          SliverList(
              delegate: SliverChildListDelegate(
               [
                 _PosterAndTitle(),
                 _OverView(),
                 _OverView(),
                 _OverView(),
                 CastingCards()

               ]
              )
          )
        ],
      ),
    );
  }
}
///    CastingCards() -> lo hemos realizado en un archivo aprate para no hacer mas extenso el presente
/// cabecera fotografica principal parte superior pantalla
class _CustomAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned:  true,
      /// https://api.flutter.dev/flutter/material/FlexibleSpaceBar-class.html
      flexibleSpace: FlexibleSpaceBar(
        centerTitle:  true,
         titlePadding: const EdgeInsets.all(0) ,
         title:  const Text ('movie.title'),

          // placeholder: AssetImage('assets/loading.gif'),
          // image: NetworkImage('https://via.placeholder.com/500x300'),
        background: Stack(
          fit: StackFit.expand,
          children: <Widget>[
        Image.network(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
          fit: BoxFit.cover,
        ),
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, 0.5),
              end: Alignment.center,
              colors: <Color>[
                Color(0x60000000),
                Color(0x00000000),
              ],
            ),
          ),
        ),

          ],

        ),
      ),
    );
  }
}


/// Apartado poster y titulo pelicula
class _PosterAndTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final TextTheme textTheme = Theme.of( context).textTheme;

    return Container(
      margin: const EdgeInsets.only( top: 10 ),
      padding: const EdgeInsets.symmetric( horizontal: 10 ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150,
            ),
          ),
          SizedBox( width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('movie.title',style: textTheme.headline5, overflow: TextOverflow.ellipsis, maxLines: 2,),
              Text('movie.originalTitle',style: textTheme.subtitle1, overflow: TextOverflow.ellipsis, maxLines: 1,),

              Row(
                children:  [
                  Icon(Icons.star_outline, size: 15, color: Colors.grey),
                  SizedBox( width: 5),
                  Text('movie.voteAverage', style: textTheme.caption),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}


/// Descripcion de la pelicula y actores
class _OverView  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric( horizontal: 30, vertical: 10),
      child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it...',
          textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

