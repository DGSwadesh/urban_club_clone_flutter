import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:social_share/social_share.dart';

class RewardScreen extends StatefulWidget {
  @override
  _RewardScreenState createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Refer and Earn \$100',
                    style: GoogleFonts.raleway(
                      fontSize: 20,
                    )),
                SizedBox(height: 10),
                Text(
                  'They get 100 on Signup.You get 100 when they take their first service',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: GoogleFonts.raleway(
                    fontSize: 14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    child: Text('Refer Via',
                        style: GoogleFonts.raleway(
                          fontSize: 14,
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        SocialShare.shareWhatsapp("This is urban clone app");
                      },
                      child: Image.network(
                        'https://img.icons8.com/bubbles/50/000000/whatsapp.png',
                      ),
                    ),
                    Image.network(
                        'https://img.icons8.com/bubbles/50/000000/facebook-new.png'),
                    Image.network(
                        'https://img.icons8.com/bubbles/50/000000/link.png')
                  ],
                )
              ],
            ),
          ),
        ),
        Container(
          height: 350,
          width: screen_width,
          color: Colors.amber[50],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('How it works?',
                    style: GoogleFonts.raleway(
                        fontSize: 17, fontWeight: FontWeight.w500)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Image.network(
                        'https://img.icons8.com/bubbles/50/000000/medal.png',
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        'Invites your friends to urban clone\n company',
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Image.network(
                        'https://img.icons8.com/bubbles/50/000000/medal.png',
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        'This will receive a reward of \$100 on\n signup',
                        //textAlign: TextAlign.center,
                        softWrap: true,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      child: Image.network(
                        'https://img.icons8.com/bubbles/50/000000/medal.png',
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        'This will receive a reward of \$100 on\n signup',
                        //textAlign: TextAlign.center,
                        softWrap: true,
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.raleway(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
