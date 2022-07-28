import 'models/items.dart';
class Rows {
  Future<List<Items>> takeFirstItems() async {
    var firstItemList = <Items>[];
    var i1 = Items(itemId: 1, image: "assets/images/gta.png", icon: "assets/icons/icon_gta.png", title: "Grand Theft Auto: Vice City", type: "Arcade * Action", star: 4.2, priceOrSize: "₹22.99");
    var i2 = Items(itemId: 2, image: "assets/images/fm.png", icon: "assets/icons/icon_fm.png", title: "Football Manager 2022 Mobile", type: "Sport", star: 3.7, priceOrSize: "₹169.99");
    var i3 = Items(itemId: 3, image: "assets/images/dead_cells.png", icon: "assets/icons/icon_dead_cells.png", title: "Dead Cells", type: "Action", star: 3.7, priceOrSize: "₹169.99");
    firstItemList.add(i1);
    firstItemList.add(i2);
    firstItemList.add(i3);
    return firstItemList;
  }

  Future<List<Items>> takeSecondItems() async {
    var secondItemList = <Items>[];
    var i1 = Items(itemId: 1, image: "assets/images/dream_league.png", icon: "assets/icons/icon_dls22.png", title: "Dream League Soccer 2022", type: "Sport", star: 4.1, priceOrSize: "482MB");
    var i2 = Items(itemId: 2, image: "assets/images/dead_cells.png", icon: "assets/icons/icon_dead_cells.png", title: "Dead Cells", type: "Action", star: 4.5, priceOrSize: "₹24.99");
    var i3 = Items(itemId: 3, image: "assets/images/dead_cells.png", icon: "assets/icons/icon_dead_cells.png", title: "Dead Cells", type: "Aksiyon * Basit", star: 4.5, priceOrSize: "₹24.99");
    secondItemList.add(i1);
    secondItemList.add(i2);
    secondItemList.add(i3);
    return secondItemList;
  }

  Future<List<Items>> takeThirdItems() async {
    var thirdItemList = <Items>[];
    var i1 = Items(itemId: 1, image: "assets/images/cats_and_soup.png", icon: "assets/icons/icon_cats.png", title: "Kediler ve Çorba", type: "Simulation", star: 4.8, priceOrSize: "61MB");
    var i2 = Items(itemId: 2, image: "assets/images/magnus.png", icon: "assets/icons/icon_magnus.png", title: "Magnus Trainer - Sat...", type: "Simulation", star: 3.9, priceOrSize: "85MB");
    var i3 = Items(itemId: 3, image: "assets/images/dead_cells.png", icon: "assets/icons/icon_dead_cells.png", title: "Dead Cells", type: "Action * Basit", star: 3.7, priceOrSize: "₹169.99");
    thirdItemList.add(i1);
    thirdItemList.add(i2);
    thirdItemList.add(i3);
    return thirdItemList;
  }
}