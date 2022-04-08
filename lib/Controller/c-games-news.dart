import '/Model/m-games-news.dart';

class ControllerGamesReviews {
  static List<ModelGamesReviews> _dataNews = [
    ModelGamesReviews(
      title: 'Red Dead Redemption 2 Review',
      imageUrl:
          'https://sm.ign.com/t/ign_me/review/r/red-dead-r/red-dead-redemption-2-review_1za8.280.jpg',
      urlPage:
          'https://me.ign.com/en/red-dead-redemption-2/154880/review/red-dead-redemption-2-review',
    ),
    ModelGamesReviews(
      title: 'Ghost of Tsushima: Iki Island DLC Review',
      imageUrl:
          'https://sm.ign.com/t/ign_me/review/g/ghost-of-t/ghost-of-tsushima-iki-island-dlc-review_74rs.280.jpg',
      urlPage:
          'https://me.ign.com/en/ghost-of-tsushima-iki-island-dlc/188454/review/ghost-of-tsushima-iki-island-dlc-review',
    ),
    ModelGamesReviews(
      title: 'Ratchet and Clank: Rift Apart Review',
      imageUrl:
          'https://sm.ign.com/t/ign_me/review/r/ratchet-an/ratchet-and-clank-rift-apart-review_168p.280.jpg',
      urlPage:
          'https://me.ign.com/en/ratchet-and-clank-rift-apart/185623/review/ratchet-and-clank-rift-apart-review',
    ),
    ModelGamesReviews(
      title: 'Resident Evil Village Review',
      imageUrl:
          'https://sm.ign.com/t/ign_me/review/r/resident-e/resident-evil-village-review_egez.280.jpg',
      urlPage:
          'https://me.ign.com/en/resident-evil-village/184535/review/resident-evil-village-review',
    ),
    ModelGamesReviews(
      title: 'It Takes Two Review',
      imageUrl:
          'https://sm.ign.com/t/ign_me/review/i/it-takes-t/it-takes-two-review_g8py.280.jpg',
      urlPage:
          'https://me.ign.com/en/it-takes-two/183058/review/it-takes-two-review',
    ),
    ModelGamesReviews(
      title: 'Assassin\'s Creed Valhalla: The Siege of Paris Review',
      imageUrl:
          'https://sm.ign.com/t/ign_me/review/a/assassins-/assassins-creed-valhalla-the-siege-of-paris-review_t8ye.280.jpg',
      urlPage:
          'https://me.ign.com/en/assassins-creed-valhalla-the-siege-of-paris-1/188116/review/assassins-creed-valhalla-the-siege-of-paris-review',
    ),
    ModelGamesReviews(
      title: 'Cyberpunk 2077 Review',
      imageUrl:
          'https://sm.ign.com/t/ign_me/review/c/cyberpunk-/cyberpunk-2077-review_yyyp.280.jpg',
      urlPage:
          'https://me.ign.com/en/cd-projekt-red-project-untitled/179837/review/cyberpunk-2077-review',
    ),
  ];

  static List<ModelGamesReviews> get getData => _dataNews;
  static int get dataLength => _dataNews.length;
}
