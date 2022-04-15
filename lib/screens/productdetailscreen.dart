import 'package:flutter/material.dart';
import 'package:myshop/providers/Productlist.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class Productdetailscreen extends StatelessWidget {
  static const routeName = '/Productdetailscreen';

  @override
  Widget build(BuildContext context) {
    final Productid = ModalRoute.of(context)!.settings.arguments as String;
    // final Productid = Routearg['id'];
    //final Producttitle = Routearg['title'];
    final Clickedproduct = Provider.of<Productlist>(context).Findbyid(Productid);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: Productdetail(
        id: Clickedproduct.id,
        title: Clickedproduct.title,
        imageurl: Clickedproduct.imageurl,
      ),
    );
  }
}

class Productdetail extends StatelessWidget {
  final String id, title, imageurl;

  Productdetail(
      {Key? key, required this.id, required this.title, required this.imageurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        height: 40.h,
        width: 100.w,
        child: Image.network(
          imageurl,
          fit: BoxFit.contain,
        ),
      ),
      footer: Container(
        height: 3.5.h,
        child: GridTileBar(
          leading: Icon(Icons.favorite_outline),
          title: Text(title),
          trailing: Icon(Icons.shopping_cart_outlined),
          backgroundColor: Colors.black38,
        ),
      ),
    );
  }
}
