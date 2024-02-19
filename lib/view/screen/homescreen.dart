import 'package:core_flutter_exam/utills/productlist.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 500,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/filter');
                      },
                      child: Text('New arrival      ')),
                  Text('Men     '),
                  Text('Women    '),
                  Text('Kids    '),
                  Spacer(),
                  Icon(Icons.shopping_cart_outlined),
                  Icon(Icons.favorite_border),
                  Icon(Icons.supervised_user_circle),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 90),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Puma\nRunning SX\n',
                              style: GoogleFonts.baskervville(
                                  fontWeight: FontWeight.w600, fontSize: 72)),
                          TextSpan(
                            text:
                                '\nThe shoe that moved mountains for eternity and still does so \nwith a swift touch of modernism\n',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                              text: '\n62, 000RWF',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ))
                        ]),
                      ),
                    ),
                      CircleAvatar(
                        backgroundColor: Color(0xffF1EBF0),
                        radius: 150,
                        backgroundImage: NetworkImage('https://s3-alpha-sig.figma.com/img/38b7/3b65/73d7b16fb028bffc891310862cbab37d?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=K4PNor0NkdfDUjem01GBWKec-BmSHENOgSTGn5VuLaGLEX~2y8KAM27Re3AuYdYmCx7godd~cCyrCXDthSZ73wvGHJr3ch07KdN8uYB9EeGAOKOzj3VImlJ~cPVem9Rr0bIybssrx6hw2Z1yMs-b2pzZxdAWrGWDWhysbM-IEEqgMyXUFP8rD13TuLn7nmF90fPnnc4LzFWX2zHXt0vArHPeIapFceuh1Bb8EFwkprdo99S188rVwMXJ~uMRQaTjoT5YmvcAQriO0AfLvq785nEuSVQrx5c6Vgv3o2hKe49fx3vpsjITAQBc1kPqK-4DBsdcXcs9spdpigmGuKbQXg__'),
                      )
                  ],

                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 1000),
              child: Container(
                height: 40,
                width: 130,
                decoration: BoxDecoration(color: Colors.red),
                child: Center(
                    child: Text(
                  'Add To Cart',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
            Column(children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 1000),
                child: Text(
                  'All the new arrivals',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Row(
                children: List.generate(Boxlist.length, (index) =>box(Boxlist[index]['name'],Boxlist[index]['price'],Boxlist[index]['img'])),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
Widget box(String name , String price,String img)
{
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
    child:Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
        height: 240,
        width: 210,
        decoration: BoxDecoration(
            color: Color(0xffF5F5F5)
        ),
        child: Column(
          children: [
            Container(
              height: 190,
              width: 210,
              decoration: BoxDecoration(
                color: Colors.grey,

              ),
              child: Image.network(img,fit: BoxFit.cover,),
            ),
             SizedBox(height: 10,),
             Text(name),
             Text(price)
          ],
        )
    )
  );

}

