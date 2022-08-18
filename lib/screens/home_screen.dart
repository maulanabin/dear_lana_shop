import 'package:flutter/material.dart';
import 'package:dear_lana_shop/screens/home_gridview.dart';
import 'package:dear_lana_shop/screens/home_carousel.dart';
import 'package:dear_lana_shop/screens/horizontal_scrollview.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Dear Lana Beauty"),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.notification_add_outlined),
            )
          ],
        ),
        body: Scrollbar(
          controller: ScrollController(),
          child: SafeArea(
              child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 950),
              color: Colors.white,
              child: ListView(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  HomeCarousel(),
                  SizedBox(
                    height: 15,
                  ),
                  TitleText("Produk Terlaris"),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: HorizontalScrollView(),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TitleText("Produk Lainnya"),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    child: HomeGridView(),
                  )
                ],
              ),
            ),
          )),
        ));
  }
}

class TitleText extends StatelessWidget {
  String title;

  TitleText(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
