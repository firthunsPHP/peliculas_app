
 import 'package:flutter/material.dart';


class CastingCards  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( bottom: 30 ),
      width: double.infinity,
      height: 180,
      color: Colors.red,
      child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: ( _, int index) => _CastCard(  ),
          ),

    );
  }
}


/// gestionamos  la parte de abajo de la pantalla donde podemos ver un scroll horizontal con los actores
 /// de la pelicula ....
class _CastCard extends StatelessWidget {

  // final Cast actor;

  // const _CastCard( this.actor );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric( horizontal: 10),
      width: 110,
      height: 100,
      child: Column(
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              // image: NetworkImage( actor.fullProfilePath ),
              image: NetworkImage( 'https://via.placeholder.com/200x300' ),
              height: 140,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox( height: 5 ),
          const Text(
            'actor.name',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )

        ],
      ),
    );
  }
}