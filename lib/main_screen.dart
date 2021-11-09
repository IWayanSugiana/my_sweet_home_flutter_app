import 'package:flutter/material.dart';
import 'package:submission/detail_screen.dart';
import 'package:submission/model/item.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Sweet Home'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 570) {
            return ItemList();
          } else if (constraints.maxWidth <= 1200) {
            return ItemGrid(
                gridCount: 4,
                nameFontSize: MediaQuery.of(context).size.width * 0.02,
                priceFontSize: MediaQuery.of(context).size.width * 0.015);
          } else {
            return ItemGrid(
                gridCount: 5,
                nameFontSize: MediaQuery.of(context).size.width * 0.015,
                priceFontSize: MediaQuery.of(context).size.width * 0.012);
          }
        },
      ),
    );
  }
}

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Item item = itemList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(item: item);
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //images
                Expanded(
                  flex: 1,
                  child: Image.asset(item.image,
                      height: MediaQuery.of(context).size.height * 0.1,
                      fit: BoxFit.cover),
                ),

                //item name & price
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          item.name,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(67, 67, 67, 1)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          item.price,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.w300,
                              color: const Color.fromRGBO(67, 67, 67, 1)),
                        ),
                      ],
                    ),
                  ),
                ),

                // favorite button
                const Expanded(
                  flex: 1,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
                    child: WishlistButton(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: itemList.length,
    );
  }
}

class ItemGrid extends StatelessWidget {
  final int gridCount;
  final double nameFontSize;
  final double priceFontSize;

  // ignore: use_key_in_widget_constructors
  const ItemGrid(
      {required this.gridCount,
      required this.nameFontSize,
      required this.priceFontSize});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: itemList.map((item) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(
                    item: item,
                  );
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            item.image,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(249, 249, 249, 1),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: WishlistButton()),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        item.name,
                        style: TextStyle(
                            fontSize: nameFontSize,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(67, 67, 67, 1)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 2.0, left: 8.0, bottom: 8.0),
                      child: Text(
                        item.price,
                        style: TextStyle(
                            fontSize: priceFontSize,
                            fontWeight: FontWeight.w300,
                            color: const Color.fromRGBO(67, 67, 67, 1)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class WishlistButton extends StatefulWidget {
  const WishlistButton({Key? key}) : super(key: key);

  @override
  _WishlistButtonState createState() => _WishlistButtonState();
}

class _WishlistButtonState extends State<WishlistButton> {
  bool isWishList = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isWishList ? Icons.favorite : Icons.favorite_border,
        color: Colors.brown,
      ),
      onPressed: () {
        setState(() {
          isWishList = !isWishList;
        });
      },
    );
  }
}
