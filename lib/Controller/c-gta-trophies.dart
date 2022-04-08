import '../Model/m-trophies.dart';

class ControllerGtaTrophies {
  static List<ModelTrophies> _dataTrophies = [
    ModelTrophies(
        title: 'A New Perspective',
        description: 'You played GTA V in first person mode for 15 hours',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/51S990100.png',
        flag: false),
    ModelTrophies(
        title: 'American Dream',
        description:
            'GTA Online: Own an Apartment, Garage and an Insured Vehicle',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/50S457ee9.png',
        flag: false),
    ModelTrophies(
        title: 'Dialling Digits',
        description:
            'GTA Online: Call for a Backup Helicopter for the first time',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/49Sabec4d.png',
        flag: false),
    ModelTrophies(
        title: 'Full Refund',
        description: 'GTA Online: Kill the thief that mugged you',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/48S171324.png',
        flag: false),
    ModelTrophies(
        title: 'Crew Cut',
        description: 'GTA Online: Complete a Job as a member of a Crew',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/47Sf7377c.png',
        flag: false),
    ModelTrophies(
        title: 'Enjoy Your Stay',
        description:
            'GTA Online: Participate in everything Los Santos has to offer',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/46S8e054a.png',
        flag: false),
    ModelTrophies(
        title: 'Stick Up Kid',
        description: 'GTA Online: Hold up all 20 Stores',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/45S8fc5e3.png',
        flag: false),
    ModelTrophies(
        title: 'Decorated',
        description: 'GTA Online: Earn 30 Platinum Awards',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/44S740825.png',
        flag: false),
    ModelTrophies(
        title: 'Clean Sweep',
        description:
            'GTA Online: Finish a Gang Attack without dying and kill at least 10 enemies',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/43S5e6ff8.png',
        flag: false),
    ModelTrophies(
        title: 'Run Like The Wind',
        description: 'GTA Online: Survive with a Bounty on your head',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/42S621b20.png',
        flag: false),
    ModelTrophies(
        title: 'Backseat Driver',
        description:
            'GTA Online: Direct a driver to 1st place as co-driver in Rally Mode',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/41S3fbd5e.png',
        flag: false),
    ModelTrophies(
        title: 'Unnatural Selection',
        description: 'GTA Online: Complete all 10 waves of a Survival',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/40S1865af.png',
        flag: false),
    ModelTrophies(
        title: 'The Midnight Club',
        description: 'GTA Online: Use custom vehicles to win 5 races',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/39S42c06c.png',
        flag: false),
    ModelTrophies(
        title: '	Numero Uno',
        description:
            'GTA Online: Obtain first place in all competitive game types',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/38S82484c.png',
        flag: false),
    ModelTrophies(
        title: 'Above the Law',
        description: 'GTA Online: Reach Rank 100',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/37Sf50f0a.png',
        flag: false),
    ModelTrophies(
        title: 'Off the Plane',
        description: 'GTA Online: Complete the Introduction',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/34Sdfea56.png',
        flag: false),
    ModelTrophies(
        title: 'Close Shave',
        description:
            'Complete all Under the Bridge and Knife Flight challenges',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/33S67788f.png',
        flag: false),
    ModelTrophies(
        title: 'Los Santos Customs',
        description: 'Fully mod a vehicle',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/32S09e5df.png',
        flag: false),
    ModelTrophies(
        title: 'Wanted: Alive or Alive',
        description: 'Deliver a bail bond target alive',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/31S27f4ef.png',
        flag: false),
    ModelTrophies(
        title: 'Pimp My Sidearm',
        description: 'Fully mod a weapon',
        imageUrl:
            'https://i.psnprofiles.com/games/bdb66f/trophies/30S409b61.png',
        flag: false),
  ];

  ControllerGtaTrophies();
  static List<ModelTrophies> get getData => _dataTrophies;
  set setflag(int index) {
    bool flag = _dataTrophies.elementAt(index).flag;

    flag = !flag;
  }

  static int get getLength => _dataTrophies.length;

  static int countCheked() {
    int counter = 0;
    for (ModelTrophies i in ControllerGtaTrophies._dataTrophies) {
      if (i.flag == true) counter++;
    }
    return counter;
  }
}
