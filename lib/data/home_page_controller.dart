import 'package:flutter/material.dart';
import 'package:technical_task/data/api_calling_controller.dart';
import 'package:technical_task/models/individual_model.dart';
import 'package:technical_task/models/poke_model.dart';
import 'package:technical_task/utils/api_urls.dart';

class HomePageController with ChangeNotifier {
  List<PokeModel> _pokeList = [];
  IndividualPokeModel _individualPokeModel = IndividualPokeModel();

  set pokeList(v) {
    _pokeList = v;
    notifyListeners();
  }

  set individualPokeModel(v) {
    _individualPokeModel = v;
    notifyListeners();
  }

  List<PokeModel> get pokeList => _pokeList;
  IndividualPokeModel get individualPokeModel => _individualPokeModel;

  HomePageController() {
    getAllPoke();
  }
  getAllPoke() async {
    String url = ApiUrls.homeUrl;
    var res = await ApiCalls.getApi(url);
    res.data['results'].forEach((v) {
      _pokeList.add(PokeModel.fromJson(v));
    });
    pokeList = _pokeList;
    notifyListeners();
  }

  getIndividualPoke() async {
    String url = ApiUrls.homeUrl;
    var res = await ApiCalls.getApi(url);
    res.data['results'].forEach((v) {
      _pokeList.add(PokeModel.fromJson(v));
    });
    pokeList = _pokeList;
    notifyListeners();
  }
}
