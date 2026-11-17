import 'package:flutter/material.dart';

class BiografiaPerfil extends StatelessWidget {
  const BiografiaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Olivier Wong', style: TextStyle(fontWeight: FontWeight.bold)),

          SizedBox(height: 3),

          Text('Artist', style: TextStyle(color: Colors.grey)),

          SizedBox(height: 5),

          Text('📸 Travel Photographer & Content Creator'),
          Text('💌 olivier@example.com'),
          Text('🌍 Travel | Photography | Adventure'),
          Text('👇 DISCOVER MY LATEST PHOTOS'),

          Text('wonguy.com/prints', style: TextStyle(color: Colors.blue)),

          SizedBox(height: 7),

          Text(
            'Followed by travelworld, thecitygraph and 5 others',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
