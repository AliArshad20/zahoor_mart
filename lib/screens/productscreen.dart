import 'package:flutter/material.dart';
import 'package:myshop/models/productsmodel.dart';
import 'package:myshop/providers/Productlist.dart';
import 'package:myshop/widgets/productscreendesign.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

class Productscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Providerdata = Provider.of<Productlist>(context).Productsgetter;
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
        actions: [
          Icon(Icons.favorite),
          SizedBox(width: 2.w,),
          Icon(Icons.shopping_cart),
          SizedBox(width: 2.w,),
        ],
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(10.sp),
          itemCount: Providerdata.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250.sp,
            crossAxisSpacing: 15.sp,
            mainAxisSpacing: 15.sp,
            childAspectRatio: 3 / 2.5,
          ),
          itemBuilder: (BuildContext ctx, int index) {
            return Productscreendesign(
              id: Providerdata[index].id,
              title: Providerdata[index].title,
              imageurl: Providerdata[index].imageurl,
            );
          }),
    );
  }
}
