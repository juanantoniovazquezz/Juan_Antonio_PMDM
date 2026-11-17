import 'package:flutter/material.dart';

import 'imagen_red.dart';

class GaleriaPublicaciones extends StatelessWidget {
  const GaleriaPublicaciones({super.key});

  static const List<String> fotografias = [
    'https://images.unsplash.com/photo-1493246507139-91e8fad9978e',
    'https://images.unsplash.com/photo-1470252649378-9c29740c9fa8',
    'https://images.unsplash.com/photo-1519608487953-e999c86e7455',
    'https://images.unsplash.com/photo-1500534623283-312aade485b7',
    'https://images.unsplash.com/photo-1501785888041-af3ef285b470',
    'https://images.unsplash.com/photo-1516483638261-f4dbaf036963',
    'https://images.unsplash.com/photo-1518837695005-2083093ee35b',
    'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
    'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b',
    'https://images.unsplash.com/photo-1470770841072-f978cf4d019e',
    'https://images.unsplash.com/photo-1511497584788-876760111969',
    'https://images.unsplash.com/photo-1472396961693-142e6e269027',
    'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee',
    'https://images.unsplash.com/photo-1519681393784-d120267933ba',
    'https://images.unsplash.com/photo-1441974231531-c6227db76b6e',
    'https://images.unsplash.com/photo-1500534314209-a25ddb2bd429',
    'https://images.unsplash.com/photo-1473116763249-2faaef81ccda',
    'https://images.unsplash.com/photo-1469474968028-56623f02e42e',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: fotografias.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return Stack(
          fit: StackFit.expand,
          children: [
            ImagenRed(url: fotografias[index], ajuste: BoxFit.cover),

            if (index == 0 || index == 4 || index == 8)
              const Positioned(
                right: 5,
                top: 5,
                child: Icon(
                  Icons.video_collection,
                  color: Colors.white,
                  size: 20,
                ),
              ),
          ],
        );
      },
    );
  }
}
