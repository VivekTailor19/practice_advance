import 'package:flutter/cupertino.dart';

class NewSliderProvider extends ChangeNotifier
{
  List<String> slides = [
    "https://static.moviecrow.com/marquee/first-look-posters-of-vikram-bhatts-horror-thriller-ghost/168890_thumb_665.jpg",
    "https://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:auto/h:auto/q:75/https://bleedingcool.com/wp-content/uploads/2022/07/ezgif-2-258a4f8e09.jpeg",
    "https://phlearn.com/wp-content/uploads/2017/10/movie-poster-3-before-after-1200px.jpg?fit=1200%2C800&quality=99&strip=all",
    "https://cdn.shopify.com/s/files/1/0969/9128/products/TheConjuring2-HollywoodEnglishHorrorMoviePoster_3ccbd106-c2e2-4e6d-9d87-4e2cc7a6b28d.jpg?v=1625220800",
  ];

  int sliderindex = 0;

  void changeslider(int index)
  {
    sliderindex = index;
    notifyListeners();
  }

}