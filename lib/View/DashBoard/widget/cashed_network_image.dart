// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';

// class CustomCashedNetworImage extends StatelessWidget {
//   String imageUrl;
//   CustomCashedNetworImage({required this.imageUrl});

//   @override
//   Widget build(BuildContext context) {
//     return CachedNetworkImage(
//       imageUrl:
//           imageUrl,
//       imageBuilder: (context, imageProvider) => Container(
//         decoration: BoxDecoration(
//           // borderRadius:
//           // BorderRadius.circular(
//           //     10.0),
//           image: DecorationImage(
//             image: imageProvider,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//       placeholder: (context, url) => Center(child: CircularProgressIndicator()),
//       errorWidget: (context, url, error) => Icon(Icons.error),
//     );
//   }
// }
