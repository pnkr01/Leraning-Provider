import 'package:flutter/foundation.dart';

class FavProvider with ChangeNotifier {
   final List<String> ls = [
      'Rose',
      'Lotus',
      'Sunflower',
      'Jasmine',
      'Daisy',
      'Tulip',
      'Magnolia',
      'Crossandra',
      'Pot Marigold',
      'Hibiscus',
      'Daisy',
      '	Cobra Saffron',
      'Periwinkle',
      'Shameplant'
    ];
  final List<int> _indexes = [];
  List<int> get indexes => _indexes;
  void addItems(int val) {
    _indexes.add(val);
    notifyListeners();
  }
  void removeItems(int val) {
    _indexes.remove(val);
    notifyListeners();
  }
}
