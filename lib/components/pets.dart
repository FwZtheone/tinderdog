import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:like_button/like_button.dart';

class SectionPicture extends StatefulWidget {
  SectionPicture({Key key}) : super(key: key);

  @override
  _SectionPictureState createState() => _SectionPictureState();
}

class _SectionPictureState extends State<SectionPicture> {
  
  
  int _like = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: CarouselSlider(
        options: CarouselOptions(height: 380.0),
        items: [
          1,
          2,
          3,
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 6.0),
                  child: Container(
                    child: Stack(
                      children: [
                        Image(
                          image: AssetImage('assets/pict$i.jpg'),
                        ),
                        Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: LikeButton(
                              size: 80,
                              circleColor: CircleColor(
                                  start: Colors.red, end: Colors.red),
                              bubblesColor: BubblesColor(
                                dotPrimaryColor: Colors.green,
                                dotSecondaryColor: Colors.orange,
                              ),
                              likeBuilder: (bool isLiked) {
                                _like++;
                                print(isLiked);
                                return Icon(
                                  Icons.favorite,
                                  color: isLiked
                                      ? Colors.red
                                      : Colors.white70,
                                  size: 80,
                                );
                              },
                            
                              
                            )
                            ),
                      ],
                    ),
                  ));
            },
          );
        }).toList(),
      ),
    );
  }
}
