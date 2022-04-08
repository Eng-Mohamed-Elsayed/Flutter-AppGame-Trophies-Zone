import '../Model/m-trophies.dart';

class ControllerLifeIsStrangeTrophies {
  static List<ModelTrophies> _dataTrophies = [
    ModelTrophies(
        title: 'Chrysalis',
        description: 'Finish Episode 1: Chrysalis',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/2S9164b2.png',
        flag: false),
    ModelTrophies(
        title: 'Micro Eyes',
        description: 'Take optional photo #1 in Episode 1: Chrysalis',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/3Sf2920e.png',
        flag: false),
    ModelTrophies(
        title: 'Wide Angels',
        description: 'Take optional photo #2 in Episode 1: Chrysalis',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/4S18edba.png',
        flag: false),
    ModelTrophies(
        title: 'Telephotogenic',
        description: 'Take optional photo #3 in Episode 1: Chrysalis',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/5S831d65.png',
        flag: false),
    ModelTrophies(
        title: 'Close-Ups',
        description: 'Take optional photo #4 in Episode 1: Chrysalis',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/6Sf7aec7.png',
        flag: false),
    ModelTrophies(
        title: 'Red Eye',
        description: 'Take optional photo #5 in Episode 1: Chrysalis',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/7S7a0fb3.png',
        flag: false),
    ModelTrophies(
        title: 'Focused',
        description: 'Take optional photo #6 in Episode 1: Chrysalis',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/8S3ccde6.png',
        flag: false),
    ModelTrophies(
        title: 'Zoomed In',
        description: 'Take optional photo #7 in Episode 1: Chrysalis',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/9S28bef2.png',
        flag: false),
    ModelTrophies(
        title: 'Focal Pointed',
        description: 'Take optional photo #8 in Episode 1: Chrysalis',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/10S4c0621.png',
        flag: false),
    ModelTrophies(
        title: 'Maximum Aperture',
        description: 'Take optional photo #9 in Episode 1: Chrysalis',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/11Seeedf4.png',
        flag: false),
    ModelTrophies(
        title: 'Light Leak',
        description: 'Take optional photo #10 in Episode 1: Chrysalis',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/12Sdc45e2.png',
        flag: false),
    ModelTrophies(
        title: 'Visionary',
        description: 'Take all optional photos in Episode 1: Chrysalis',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/13S686016.png',
        flag: false),
    ModelTrophies(
        title: 'Out of Time',
        description: 'Finish Episode 2: Out of Time',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/14S2ffaa9.png',
        flag: false),
    ModelTrophies(
        title: 'Field Of View',
        description: 'Take optional photo #1 in Episode 2: Out of Time',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/15Sc77006.png',
        flag: false),
    ModelTrophies(
        title: 'Full Exposure',
        description: 'Take optional photo #2 in Episode 2: Out of Time',
        imageUrl:
            'https://i.psnprofiles.com/games/ed93d6/trophies/16Sc09a7b.png',
        flag: false),
  ];

  ControllerLifeIsStrangeTrophies();
  static List<ModelTrophies> get getData => _dataTrophies;
  set setflag(int index) {
    bool flag = _dataTrophies.elementAt(index).flag;

    flag = !flag;
  }

  static int get getLength => _dataTrophies.length;

  static int countCheked() {
    int counter = 0;
    for (ModelTrophies i in ControllerLifeIsStrangeTrophies._dataTrophies) {
      if (i.flag == true) counter++;
    }
    return counter;
  }
}
