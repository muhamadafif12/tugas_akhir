import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyel_akhir/hotel_favorite.dart';


class HomePage extends StatelessWidget {
  const HomePage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back();
        },
        child: Icon(Icons.close),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hotel Favorite',
              ),
              TextButton(
                onPressed: () {
                  Get.to(HotelFavorite());
                },
                child: Text(
                  'Lihat semua',
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/1.jpg'),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/2.jpg'),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/3.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hotel',
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Lihat semua',
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Image.asset('assets/2.jpg'),
            title: Text('Hotel Bali'),
            subtitle: Text('Hotel yang nyaman'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            leading: Image.asset('assets/2.jpg'),
            title: Text('Hotel Argon'),
            subtitle: Text('Hotel yang nyaman'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            leading: Image.asset('assets/2.jpg'),
            title: Text('Hotel Kalimaya'),
            subtitle: Text('Hotel yang nyaman'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          )
        ],
      ),
    );
  }
}
