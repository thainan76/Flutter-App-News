import 'dart:async';
import 'package:app_spotway/pages/tabs/area/area_model.dart';

import 'areaApi.dart';


class AreaBloc {
  final _streamController = StreamController<List<AreaModel>>();

  Stream<List<AreaModel>> get stream => _streamController.stream;

  fetch() async {
    try {
      List<AreaModel> area = await AreaApi.areas();
      _streamController.add(area);
    } catch (e){
      _streamController.addError(e);
    }
  }

  void dispose() {
    _streamController.close();
  }
}
