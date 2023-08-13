import 'package:flutter/material.dart';

lass HotelFavorite extends StatelessWidget {
  const HotelFavorite({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel Favorite'),
      ),
      body: ListView.builder(itemBuilder: ((context, index) {
        return ListTile(
          leading: Image.asset('assets/2.jpg'),
          title: Text('Hotel Bali'),
          subtitle: Text('Hotel yang nyaman'),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
        );
      })),
    );
  }
}
