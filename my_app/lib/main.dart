import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: VerticalPages(),
      ),
    );
  }
}

class VerticalPages extends StatefulWidget {
  const VerticalPages({
    Key? key,
  }) : super(key: key);

  @override
  State<VerticalPages> createState() => _VerticlePagesState();
}

class _VerticlePagesState extends State<VerticalPages> {

  final List<String> titles = ["china", "Germany", "Norway", "Usa", "Japan"];
  final List<String> imageList= [
    "https://images.freeimages.com/images/previews/106/photographer-1464286.jpg",
    "https://images.freeimages.com/images/previews/532/pumpkin-patch-1492976.jpg",
    "https://images.freeimages.com/variants/hGje8oXQPYzKXjx8kaYiRmaN/5a0bd68e593adb18739fe6fe526aa40368c6d1e5924c85e47ba06f7a665f1000",
    "https://images.freeimages.com/images/previews/a4c/girl-under-tree-1306574.jpg",
    "https://images.freeimages.com/variants/VLf3w6WaqC96L11o4sUe57id/b6679d1569eb20491ea73c07cf4bfc2406d426757005363d05f4184a67cad3c1"
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> images = imageList.map( (image) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.black45,
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
            image: NetworkImage(image)),
          borderRadius: BorderRadius.circular(10)));
    }).toList();

    return SafeArea(
      child:VerticalCardPager(
        titles: titles, images: images,
        textStyle: TextStyle(fontSize: 14, color: Colors.white),),
    );

  }
}
