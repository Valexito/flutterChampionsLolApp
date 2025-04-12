// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lol_champions/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 144, 200, 243),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/logo.png',
                  height: 200,
                ),
              ),

              const SizedBox(height: 48),

              //title
              const Text(
                'League of Legends Champions',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              const SizedBox(height: 24),

              //subtitle
              const Text(
                'An app to describe champions habilities and their builds',
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 175, 164, 72),
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 24),
              //start now button
              GestureDetector(
                onTap: () => Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context)=> HomePage(),
                    ),
                  ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 9, 63, 107),
                    borderRadius: BorderRadius.circular(12),
                    ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                      child: const Text(
                    'See champions',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      ),
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
