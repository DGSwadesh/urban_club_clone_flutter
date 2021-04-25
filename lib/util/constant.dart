import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle customizeTextStyle(fontWeight, fontSize, fontColor) =>
    GoogleFonts.roboto(
        textStyle: TextStyle(
            fontWeight: fontWeight,
            // fontFamily: 'Poppins',
            wordSpacing: 3,
            color: fontColor,
            fontSize: fontSize));

TextStyle customizeTextStyleSmallerSpace(fontWeight, fontSize, fontColor) =>
    GoogleFonts.nunito(
        textStyle: TextStyle(
            fontWeight: fontWeight,
            // fontFamily: 'Poppins',
            wordSpacing: 1,
            letterSpacing: 0.3,
            color: fontColor,
            fontSize: fontSize));

showToast(msg, color) => Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: color,
      textColor: Colors.white,
      fontSize: 16.0,
    );
    
final Color red = Color(0xffff1a1a);
final Color white = Color(0xffffffff);
final Color lightWhite = Color(0xfffcf2f2);
final Color verylightWhite = Color(0xffFBF2F0);
final Color thinGrayColor = Color(0xFF6B7278);
final Color lightGrayColor = Color(0xFF6B7278);
final Color lightBlackBoldColor = Color(0xFF6B7278);
final Color black = Color(0xff000000);
final Color green = Color(0xff336600);
final Color backgroundColor = Color(0xff1ca3fd);
final FontWeight extraBoldTextWeight = FontWeight.w700;
final FontWeight boldTextWeight = FontWeight.w600;
final FontWeight mediumTextWeight = FontWeight.w500;
final FontWeight thinTextWeight = FontWeight.w400;
final FontWeight extraThinTextWeight = FontWeight.w300;
final Color loginButtonColor = Color(0xff01e0ff);
final Color colorGreenAccent = Color(0xff00ff00);
final Color primaryColor2 = Color(0xFFfffbd5);
final Color grayColor = Color(0xFF6B7278);
final Color blueColor = Color(0xFF044fc8);
final Color darkRedColor = Color(0xFF6B7278);
final Color bottomNavBarIconColor = Color.fromARGB(1, 67, 148, 223);

//=================================BASE URL====================================
final String BASE_URL = "https://laravel.gowebbidemo.com/122303/public/api/v1/";
// final String BASE_URL = "https://bhojpurisangam.in/api/";
//========================================sharedpreference======================

//---------------Parent Apis-----------------//
final String whats_new = 'whats-new'; //get
final String categories = 'categories'; //get
final String albums = 'albums'; //get
final String audioStories = 'audio-stories'; //get
final String myplaylist = 'my-playlist'; //get
final String allaudios = 'all-audios'; //get
final String searchSongs = 'search-songs-album-artist'; //get

//========================================sharedpreference======================
//==========================Text============================================

final String INTERNET_ERROR = "We are faceing an error";

final String SUCCESS = "success";
final String FAILED = "failed";
//========================assets======================

final String googleImg = 'assets/google.svg';
final String logoImg = 'assets/logo.png';
final String backgroundImg = 'assets/bg.png';
final String songImg = 'assets/image.png';
final String eventImg = 'assets/event.png';
final String albumImg = 'assets/album.png';
final String audioStoryImg = 'assets/audio.png';
final String categoryImg = 'assets/category.png';
final String playListSongImg = 'assets/playListSong.png';
final String nowPlayingImg = 'assets/now_playing.png';


final String imageList = 'assets/image';
