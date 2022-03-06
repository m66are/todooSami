import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key,required this.productName,required this.productDescription}) : super(key: key);
  final String? productName;
  final String? productDescription;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1.0,
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Stack(
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CachedNetworkImage(
                    imageUrl:
                        "https://www.bpimaging.com/assets/uploads/2015/02/11897_096.jpg",
                    imageBuilder: (context, image) {
                      return Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image:
                              DecorationImage(image: image, fit: BoxFit.cover),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Text(
                        productName ?? 'Errorrr',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        productDescription ?? "Error",
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.amber,
                      padding: const EdgeInsets.all(10),
                      primary: Colors.black,
                      textStyle: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w400)),
                  onPressed: () {},
                  child: const Text('Add to cart')),
            )
          ],
        ),
      ),
    );
  }
}
