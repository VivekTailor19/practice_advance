import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'carosel_slider_provider.dart';

class NewSlider extends StatefulWidget {
  const NewSlider({Key? key}) : super(key: key);

  @override
  State<NewSlider> createState() => _NewSliderState();
}

class _NewSliderState extends State<NewSlider> {
  NewSliderProvider? nspT;
  NewSliderProvider? nspF;

  @override
  Widget build(BuildContext context) {
    nspT = Provider.of<NewSliderProvider>(context, listen: true);
    nspF = Provider.of<NewSliderProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Movies"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: nspF!.slides.length,
                itemBuilder: (context, index, realIndex) {
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 50.h,
                      width: 100.w,
                      alignment: Alignment.center,
                      //child: Container(height: 25.h,width: 72.w,color:Colors.red,),
                      // child: Image.network("${nspF!.slides[index]}",height: 25.h,width: 75.h,fit: BoxFit.fill,),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage("${nspF!.slides[index]}"),
                              fit: BoxFit.fill)),
                    ),
                  );
                },
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  autoPlayInterval: Duration(seconds: 2),
                  onPageChanged: (index, reason) {
                    return nspF!.changeslider(index);
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: nspF!.slides
                    .asMap()
                    .entries
                    .map(
                      (e) => Container(
                          margin: EdgeInsets.all(2),
                          height: 1.5.h,
                          width: 1.54.h,
                          decoration: BoxDecoration(

                              color: nspT!.sliderindex == e.key ? Colors.red : Colors.yellow,

                              shape: BoxShape.circle)),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
