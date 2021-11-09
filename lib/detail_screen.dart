import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/model/item.dart';

class DetailScreen extends StatelessWidget {
  final Item item;

  DetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailWebPage(item: item, size: size);
      } else {
        return DetailMobilePage(item: item, size: size);
      }
    });
  }
}

class DetailWebPage extends StatefulWidget {
  DetailWebPage({
    Key? key,
    required this.item,
    required this.size,
  }) : super(key: key);

  final Item item;
  final Size size;

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController(initialScrollOffset: 50.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Column(
            children: [
              Image.asset(
                widget.item.image,
                width: widget.size.width * 0.5,
                fit: BoxFit.cover,
              ),

              //image listview
              Scrollbar(
                isAlwaysShown: true,
                controller: _scrollController,
                child: SizedBox(
                  height: widget.size.height * 0.1,
                  width: widget.size.width * 0.5,
                  child: ListView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                            widget.item.image,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                            widget.item.image,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                            widget.item.image,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                            widget.item.image,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: widget.size.width * 0.3,
                height: widget.size.height * 0.1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      elevation: 1.0,
                    ),
                    onPressed: () {},
                    child: Text("Beli",
                        style: TextStyle(
                          fontSize: widget.size.width * 0.02,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
        Scrollbar(
          isAlwaysShown: true,
          controller: _scrollController,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Card(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                width: widget.size.width * 0.47,
                padding: const EdgeInsets.symmetric(),
                child: Column(
                  children: <Widget>[
                    //product name
                    Container(
                      width: widget.size.width * 0.45,
                      child: Text(widget.item.name,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: widget.size.width * 0.035,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(67, 67, 67, 1),
                          )),
                    ),

                    //product name
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      width: widget.size.width * 0.45,
                      child: Text(widget.item.price,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: widget.size.width * 0.025,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(67, 67, 67, 1),
                          )),
                    ),

                    //Product Info Heading
                    Container(
                      padding: EdgeInsets.only(top: 16, bottom: 2),
                      width: widget.size.width * 0.45,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: SizedBox(
                          width: widget.size.width * 0.1,
                          child: Text(
                            'Informasi Produk',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: widget.size.width * 0.025,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //Product Info Content
                    Container(
                      width: widget.size.width * 0.45,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Stok Barang',
                                  style: TextStyle(
                                      fontSize: widget.size.width * 0.02,
                                      color:
                                          const Color.fromRGBO(67, 67, 67, 1)),
                                ),
                                Text(
                                  'Barang Terjual',
                                  style: TextStyle(
                                      fontSize: widget.size.width * 0.02,
                                      color:
                                          const Color.fromRGBO(67, 67, 67, 1)),
                                ),
                                Text(
                                  'Rating',
                                  style: TextStyle(
                                      fontSize: widget.size.width * 0.02,
                                      color:
                                          const Color.fromRGBO(67, 67, 67, 1)),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    ' : ',
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                        color: const Color.fromRGBO(
                                            67, 67, 67, 1)),
                                  ),
                                  Text(
                                    ' : ',
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                        color: const Color.fromRGBO(
                                            67, 67, 67, 1)),
                                  ),
                                  Text(
                                    ' : ',
                                    style: TextStyle(
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                                0.02,
                                        color: const Color.fromRGBO(
                                            67, 67, 67, 1)),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  widget.item.stock,
                                  style: TextStyle(
                                      fontSize: widget.size.width * 0.02,
                                      color:
                                          const Color.fromRGBO(67, 67, 67, 1)),
                                ),
                                Text(
                                  widget.item.sold,
                                  style: TextStyle(
                                      fontSize: widget.size.width * 0.02,
                                      color:
                                          const Color.fromRGBO(67, 67, 67, 1)),
                                ),
                                Text(
                                  widget.item.rating,
                                  style: TextStyle(
                                      fontSize: widget.size.width * 0.02,
                                      color:
                                          const Color.fromRGBO(67, 67, 67, 1)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                    //Product Detail Heading
                    Container(
                      padding: EdgeInsets.only(top: 16, bottom: 2),
                      width: widget.size.width * 0.45,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: SizedBox(
                          width: widget.size.width * 0.1,
                          child: Text(
                            'Detail Produk',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: widget.size.width * 0.025,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),

                    //Product Detail Content
                    Container(
                      width: widget.size.width * 0.45,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: SizedBox(
                          width: widget.size.width,
                          child: Text(
                            widget.item.description,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: widget.size.width * 0.02,
                                color: const Color.fromRGBO(67, 67, 67, 1)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class DetailMobilePage extends StatelessWidget {
  const DetailMobilePage({
    Key? key,
    required this.item,
    required this.size,
  }) : super(key: key);

  final Item item;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Stack image, product name, price, and back button
              Stack(
                children: <Widget>[
                  Image.asset(
                    item.image,
                    width: size.width,
                    height: size.height * 0.4,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: size.height * 0.4,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                  SafeArea(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            item.price,
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //ListView item images
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          item.image,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          item.image,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(
                          item.image,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Product Info Heading
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                child: SizedBox(
                  width: size.width,
                  child: Text(
                    'Informasi Produk',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              //Product Info Content
              Padding(
                padding:
                    const EdgeInsets.only(top: 4, bottom: 16.0, left: 16.0),
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Stok Barang',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              color: const Color.fromRGBO(67, 67, 67, 1)),
                        ),
                        Text(
                          'Barang Terjual',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              color: const Color.fromRGBO(67, 67, 67, 1)),
                        ),
                        Text(
                          'Rating',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              color: const Color.fromRGBO(67, 67, 67, 1)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            ' : ',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                color: const Color.fromRGBO(67, 67, 67, 1)),
                          ),
                          Text(
                            ' : ',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                color: const Color.fromRGBO(67, 67, 67, 1)),
                          ),
                          Text(
                            ' : ',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
                                color: const Color.fromRGBO(67, 67, 67, 1)),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item.stock,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              color: const Color.fromRGBO(67, 67, 67, 1)),
                        ),
                        Text(
                          item.sold,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              color: const Color.fromRGBO(67, 67, 67, 1)),
                        ),
                        Text(
                          item.rating,
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              color: const Color.fromRGBO(67, 67, 67, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //Product Detail Heading
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                child: SizedBox(
                  width: size.width,
                  child: Text(
                    'Detail Produk',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              //Product Detail Content
              Padding(
                padding: const EdgeInsets.only(
                    top: 4.0, bottom: 16.0, left: 16.0, right: 16.0),
                child: SizedBox(
                  width: size.width,
                  child: Text(
                    item.description,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        color: const Color.fromRGBO(67, 67, 67, 1)),
                  ),
                ),
              ),

              //Button
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  height: size.height * 0.05,
                  width: size.width * 0.2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.brown,
                      elevation: 1.0,
                    ),
                    onPressed: () {},
                    child: const Text("Beli"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
