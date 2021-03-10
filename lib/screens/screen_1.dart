import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';
  final String assetName = 'lib/svg/close_icon.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 150, 20, 150),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffE5E5E5)),
            child: Center(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: Colors.white,
                    ),
                    width: double.maxFinite,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: const Text(
                            'Title',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22),
                          ),
                          padding: const EdgeInsets.only(left: 168),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: SvgPicture.asset(
                                assetName,
                                color: Colors.black54,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: const Text(
                      'Lorem ipsum elementum urna sit molestie ligula amet vitae at vivamus, '
                      'urna: malesuada sodales leo sed commodo ipsum lorem nam mattis eget lorem duis.',
                      style: TextStyle(color: Colors.black),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    color: Colors.white,
                  ),
                  const Expanded(
                      child: CupertinoScrollbar(
                    isAlwaysShown: true,
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '''Lorem ipsum elementum urna sit molestie ligula amet vitae at vivamus, urna: malesuada sodales leo sed commodo ipsum lorem nam mattis eget lorem duis. Nulla ut enim fusce metus nulla, sit non vitae magna vivamus tempus sodales, pharetra nulla rutrum quisque. Gravida sit ut congue — vivamus in sit adipiscing quisque enim bibendum nibh, pharetra metus in amet vulputate urna. Malesuada sodales lorem elementum eros, fusce: ligula molestie, nam tellus: quam magna. 
                      
                      Mattis eget cursus: rutrum: ultricies, nibh porttitor tellus, ut adipiscing metus sagittis — metus nec metus sit ut rutrum duis tellus eu vivamus eu porta cursus.Mattis a lorem bibendum lorem ornare: vitae morbi in justo congue amet nam quam, congue nec quisque, molestie amet vivamus sit sagittis mauris. Integer quam duis ipsum porttitor vitae ornare magna commodo, odio arcu curabitur leo sagittis quisque quam tellus fusce ipsum lorem vitae pellentesque eu quam. Et odio tempus magna elementum sit auctor elementum integer eros non molestie sagittis eros porttitor duis donec. Morbi pharetra risus urna ligula arcu curabitur amet, proin ipsum nam, at molestie malesuada pellentesque magna, odio eget enim pharetra. Eget sit nibh pellentesque, amet eu eros magna enim ut ipsum sem arcu gravida vulputate. Rutrum vivamus leo nec eget et, cursus massa integer gravida maecenas elementum et elementum commodo proin integer. Tempus mauris massa ipsum pharetra urna bibendum sodales bibendum amet — metus porta enim gravida sed a odio sem eu integer.
                      ''',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )),
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.8),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          )
                        ],
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      color: Colors.white,
                    ),
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 150,
                          height: 43,
                          child: CupertinoButton(
                            borderRadius: BorderRadius.circular(40),
                            padding: const EdgeInsets.fromLTRB(16, 12, 16, 10),
                            color: Colors.purpleAccent,
                            onPressed: () {},
                            child: const Text(
                              'TEST BUTTON',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
