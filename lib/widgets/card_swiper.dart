import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_card_swipper/flutter_card_swiper.dart';
// import 'package:peliculas/models/models.dart';
//


class CardSwiper extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;


    // if( this.movies.length == 0) {
    //   return Container(
    //     width: double.infinity,
    //     height: size.height * 0.5,
    //     child: Center(
    //       child: CircularProgressIndicator(),
    //     ),
    //   );
    // }

    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      // color: Colors.red,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.4,
        // itemBuilder: (  BuildContext context, int index){ <- sino vamos a utilizar el BuildContext
        itemBuilder: ( _ , int index){

          /// sobre    return const FadeInImage( -> segundo boton rato
          /// 'wrap whit a widget'
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'details', arguments: 'movie-instance' ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                      image: NetworkImage('https://via.placeholder.com/300x400' ),
                      fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}

