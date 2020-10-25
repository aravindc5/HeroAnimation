import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hero_animation/const/data.dart';
import 'package:hero_animation/ui/details_page.dart';
import 'package:hero_animation/widgets/category_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
                Icon(
                  Icons.book,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 10, 0, 10),
              child: Text(
                "Book Store",
                style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Category(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(DetailsScreen.routeName, arguments: index);
                },
                title: Text(
                  bookdata[index].name,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.w800),
                ),
                subtitle: Text(
                  bookdata[index].authorName,
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                leading: Hero(
                  tag: 'book-image-$index',
                  child: Image.network(bookdata[index].imageUrl),
                ),
                trailing: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        bookdata[index].price,
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
              );
            }, childCount: bookdata.length),
          ),
        ],
      ),
    );
  }
}
