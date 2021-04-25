// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart';

// class Networkcall {
//   static final Networkcall networkcall = new Networkcall._internal();

//   Networkcall._internal();

//   factory Networkcall() {
//     return networkcall;
//   }

//   // >>>>>>>>>>>>>>>>>>>>>>>>>>> fetchWhatsNewCategory <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//   Future<WhatsNewCategoryModel?> fetchWhatsNewCategory() async {
//     String url = '$BASE_URL$whats_new';

//     try {
//       Response response =
//           await MyClient(defaultHeaders: HeaderModelJSON('').toMap()).get(
//         Uri.parse(url),
//       );
//       print(response.body);
//       if (response.statusCode == 200) {
//         var jsonResponse = json.decode(response.body);
//         print('jsonResponse: + $jsonResponse');
//         if (jsonResponse['status'] == 'success') {
//           return WhatsNewCategoryModel.fromJson(jsonResponse);
//         } else {
//           throw CustomError(json.decode(response.body)["message"]);
//         }
//       } else {
//         throw CustomError(json.decode(response.body)["message"]);
//       }
//     } on SocketException {
//       throw CustomError('No Internet connection 😑');
//     } catch (e) {
//       print(e);
//       e is CustomError
//           ? throw CustomError(e.errorMessage())
//           : throw CustomError(INTERNET_ERROR);
//     }
//   }

//   // >>>>>>>>>>>>>>>>>>>>>>>>>>> fetchCategory <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//   Future<WhatsNewCategoryModel?> fetchCategory() async {
//     String url = '$BASE_URL$categories';

//     try {
//       Response response =
//           await MyClient(defaultHeaders: HeaderModelJSON('').toMap()).get(
//         Uri.parse(url),
//       );
//       print(response.body);
//       if (response.statusCode == 200) {
//         var jsonResponse = json.decode(response.body);
//         // print('jsonResponse: + $jsonResponse');
//         if (jsonResponse['status'] == 'success') {
//           return WhatsNewCategoryModel.fromJson(jsonResponse);
//         } else {
//           throw CustomError(json.decode(response.body)["message"]);
//         }
//       } else {
//         throw CustomError(json.decode(response.body)["message"]);
//       }
//     } on SocketException {
//       throw CustomError('No Internet connection 😑');
//     } catch (e) {
//       // print(e);
//       e is CustomError
//           ? throw CustomError(e.errorMessage())
//           : throw CustomError(INTERNET_ERROR);
//     }
//   }

//   // >>>>>>>>>>>>>>>>>>>>>>>>>>> fetchAlbums <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//   Future<WhatsNewCategoryModel?> fetchAlbums() async {
//     String url = '$BASE_URL$albums';

//     try {
//       Response response =
//           await MyClient(defaultHeaders: HeaderModelJSON('').toMap()).get(
//         Uri.parse(url),
//       );
//       print(response.body);
//       if (response.statusCode == 200) {
//         var jsonResponse = json.decode(response.body);
//         // print('jsonResponse: + $jsonResponse');
//         if (jsonResponse['status'] == 'success') {
//           return WhatsNewCategoryModel.fromJson(jsonResponse);
//         } else {
//           throw CustomError(json.decode(response.body)["message"]);
//         }
//       } else {
//         throw CustomError(json.decode(response.body)["message"]);
//       }
//     } on SocketException {
//       throw CustomError('No Internet connection 😑');
//     } catch (e) {
//       // print(e);
//       e is CustomError
//           ? throw CustomError(e.errorMessage())
//           : throw CustomError(INTERNET_ERROR);
//     }
//   }

//   // >>>>>>>>>>>>>>>>>>>>>>>>>>> fetchAudioStories <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//   Future<WhatsNewCategoryModel?> fetchAudioStories() async {
//     String url = '$BASE_URL$audioStories';

//     try {
//       Response response =
//           await MyClient(defaultHeaders: HeaderModelJSON('').toMap()).get(
//         Uri.parse(url),
//       );
//       print(response.body);
//       if (response.statusCode == 200) {
//         var jsonResponse = json.decode(response.body);
//         // print('jsonResponse: + $jsonResponse');
//         if (jsonResponse['status'] == 'success') {
//           return WhatsNewCategoryModel.fromJson(jsonResponse);
//         } else {
//           throw CustomError(json.decode(response.body)["message"]);
//         }
//       } else {
//         throw CustomError(json.decode(response.body)["message"]);
//       }
//     } on SocketException {
//       throw CustomError('No Internet connection 😑');
//     } catch (e) {
//       // print(e);
//       e is CustomError
//           ? throw CustomError(e.errorMessage())
//           : throw CustomError(INTERNET_ERROR);
//     }
//   }

//   // >>>>>>>>>>>>>>>>>>>>>>>>>>> fetchMyPlaylist <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//   Future<MyPlayListModel?> fetchMyPlaylist() async {
//     String url = '$BASE_URL$myplaylist';
//     String token = 'Bearer 3667e1ffa97380a4be0bff10ce8185d2e2a92e3c';
//     // var headers = {
//     //   'Authorization': token,
//     //   'Accept': "application/json",
//     // };
//     try {
//       Response response =
//           await MyClient(defaultHeaders: HeaderModelJSON('').toMap())
//               .get(Uri.parse(url), headers: HeaderModelJSON(token).toMap());
//       print(response.body);
//       if (response.statusCode == 200) {
//         var jsonResponse = json.decode(response.body);
//         // print('jsonResponse: + $jsonResponse');
//         if (jsonResponse['status'] == 'success') {
//           return MyPlayListModel.fromJson(jsonResponse);
//         } else {
//           throw CustomError(json.decode(response.body)["message"]);
//         }
//       } else {
//         throw CustomError(json.decode(response.body)["message"]);
//       }
//     } on SocketException {
//       throw CustomError('No Internet connection 😑');
//     } catch (e) {
//       print(e);
//       e is CustomError
//           ? throw CustomError(e.errorMessage())
//           : throw CustomError(INTERNET_ERROR);
//     }
//   }

//   // >>>>>>>>>>>>>>>>>>>>>>>>>>> fetchAllMusic <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//   Future<MusicModel?> fetchAllMusic() async {
//     String url = '$BASE_URL$allaudios';
//     try {
//       Response response =
//           await MyClient(defaultHeaders: HeaderModelJSON('').toMap()).get(
//         Uri.parse(url),
//       );
//       print(response.body);
//       if (response.statusCode == 200) {
//         var jsonResponse = json.decode(response.body);
//         // print('jsonResponse: + $jsonResponse');
//         if (jsonResponse['status'] == 'success') {
//           return MusicModel.fromJson(jsonResponse);
//         } else {
//           throw CustomError(json.decode(response.body)["message"]);
//         }
//       } else {
//         throw CustomError(json.decode(response.body)["message"]);
//       }
//     } on SocketException {
//       throw CustomError('No Internet connection 😑');
//     } catch (e) {
//       // print(e);
//       e is CustomError
//           ? throw CustomError(e.errorMessage())
//           : throw CustomError(INTERNET_ERROR);
//     }
//   }

//   // >>>>>>>>>>>>>>>>>>>>>>>>>>> fetchSearchResult <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//   Future<SearPageModel?> fetchSearchResult(keyword) async {
//     String url = '$BASE_URL$searchSongs';
//     var body = {"search": keyword};
//     try {
//       Response response =
//           await MyClient(defaultHeaders: HeaderModelJSON('').toMap()).post(
//         Uri.parse(url),body: body
//       );
//       print(response.body);
//       if (response.statusCode == 200) {
//         var jsonResponse = json.decode(response.body);
//         // print('jsonResponse: + $jsonResponse');
//         if (jsonResponse['status'] == 'success') {
//           return SearPageModel.fromJson(jsonResponse);
//         } else {
//           throw CustomError(json.decode(response.body)["message"]);
//         }
//       } else {
//         throw CustomError(json.decode(response.body)["message"]);
//       }
//     } on SocketException {
//       throw CustomError('No Internet connection 😑');
//     } catch (e) {
//       // print(e);
//       e is CustomError
//           ? throw CustomError(e.errorMessage())
//           : throw CustomError(INTERNET_ERROR);
//     }
//   }
// }

// Networkcall networkcallService = new Networkcall();
