import 'package:flutter/material.dart';
import 'package:hero_animation/const/data.dart';

class DetailsScreen extends StatelessWidget {
  static const routeName = "/DetailsScreen";

  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  color: Colors.white,
                  child: Hero(
                    tag: 'book-image-$index',
                    child: Image.network(
                      bookdata[index].imageUrl,
                      height: 300,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
              child: Text(
                bookdata[index].name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsetsDirectional.fromSTEB(10, 10, 0, 10),
                    child: Text(
                      bookdata[index].authorName,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black, width: 1.0)),
                    margin:
                        const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        bookdata[index].price,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: ButtonTheme(
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.black)),
                  onPressed: () {},
                  color: Colors.black,
                  textColor: Colors.white,
                  child: Text("Buy now".toUpperCase(),
                      style: TextStyle(fontSize: 14)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
