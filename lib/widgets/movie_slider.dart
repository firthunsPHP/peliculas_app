import 'package:flutter/material.dart';
// import 'package:peliculas/models/models.dart';


/// stles + tab
class MovieSlider  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
      height: 260,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:   [
        const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20 ),
            child: Text( 'Populares', style: TextStyle( fontSize: 20 , fontWeight: FontWeight.bold),)
        ),

          SizedBox( height: 5,),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
                itemBuilder: ( _ , int index) => _MoviePoster()
            ),
          ),
        ],
      ),
    );
  }
}
// esta funcion privada , será de uso exclusivo de este archivo.
class _MoviePoster  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
          width: 130,
          height: 190,
          // color: Colors.green,
          margin: const EdgeInsets.symmetric( horizontal: 10),
          child: Column(
            children:  [

              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance') ,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: const FadeInImage(
                      placeholder: AssetImage('assets/no-image.jpg'),
                      image: NetworkImage('https://via.placeholder.com/300x400' ),
                      width: 130,
                      height: 190,
                      fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox( height:  5,),
              const Flexible(
                child:  Text(
                    'Starwars: el retorno del Jedivvvvvvvvvvvvvvvvvvvvvvvvv',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              )

            ],
          )

    );
  }
}
