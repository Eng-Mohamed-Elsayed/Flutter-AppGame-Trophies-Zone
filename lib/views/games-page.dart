import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trophies_zone/Components/app-bar.dart';
import 'package:trophies_zone/Components/card-trophy.dart';
import 'package:trophies_zone/Controller/c-gta-trophies.dart';
import 'package:trophies_zone/Controller/c-life-is-strange.dart';
import 'package:trophies_zone/Controller/c-rdr2-trophies.dart';

import 'package:trophies_zone/Model/m-trophies.dart';

class PageGames extends StatefulWidget {
  @override
  _PageGamesState createState() => _PageGamesState();
}

class _PageGamesState extends State<PageGames> {
  int trophyCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCust(
        title: 'Games Trophies',
      ),
      body: Accordion(
          maxOpenSections: 2,
          headerBackgroundColor: Colors.black,
          contentBackgroundColor: Colors.black87,
          contentBorderColor: Colors.white,
          rightIcon: Icon(Icons.arrow_drop_down, color: Colors.white),
          children: [
            AccordionSection(
              isOpen: true,
              header: Text('Red Dead Redmption 2',
                  style: GoogleFonts.staatliches(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ))),
              leftIcon: Image.network(
                'https://i.psnprofiles.com/games/debcee/L758121.png',
                width: 100,
                height: 100,
              ),
              content: Container(
                height: 200,
                child: ListView.builder(
                  itemCount: ControllerRdr2Trophies.getLength,
                  itemBuilder: (context, index) {
                    ModelTrophies data =
                        ControllerRdr2Trophies.getData.elementAt(index);

                    ControllerRdr2Trophies edit = new ControllerRdr2Trophies();

                    return CardTrophies(
                        data: data,
                        index: index,
                        edit: edit,
                        checkColor: Colors.red);
                  },
                ),
              ),
            ),
            AccordionSection(
              header: Text('Grand Theft Auto V',
                  style: GoogleFonts.staatliches(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ))),
              leftIcon: Image.network(
                "https://i.psnprofiles.com/games/bdb66f/L0b925e.png",
                width: 100,
                height: 100,
              ),
              content: Container(
                height: 200,
                child: ListView.builder(
                  itemCount: ControllerGtaTrophies.getLength,
                  itemBuilder: (context, index) {
                    ModelTrophies data =
                        ControllerGtaTrophies.getData.elementAt(index);
                    ControllerGtaTrophies edit = new ControllerGtaTrophies();

                    return CardTrophies(
                        data: data,
                        index: index,
                        edit: edit,
                        checkColor: Colors.green);
                  },
                ),
              ),
            ),
            AccordionSection(
              header: Text('Life Is Strange',
                  style: GoogleFonts.staatliches(
                      textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ))),
              leftIcon: Image.network(
                "https://i.psnprofiles.com/games/ed93d6/Ld80014.png",
                width: 100,
                height: 100,
              ),
              content: Container(
                height: 200,
                child: ListView.builder(
                  itemCount: ControllerLifeIsStrangeTrophies.getLength,
                  itemBuilder: (context, index) {
                    ModelTrophies data = ControllerLifeIsStrangeTrophies.getData
                        .elementAt(index);
                    ControllerLifeIsStrangeTrophies edit =
                        new ControllerLifeIsStrangeTrophies();

                    return CardTrophies(
                        data: data,
                        index: index,
                        edit: edit,
                        checkColor: Colors.grey);
                  },
                ),
              ),
            ),
          ]),
    );
  }
}

// *this is the Working code with out refactore

