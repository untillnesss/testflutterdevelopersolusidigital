import 'package:testflutterdevelopersolusidigital/app/models/news_response_model.dart';
import 'package:testflutterdevelopersolusidigital/app/modules/home/states/home_states.dart';
import 'package:testflutterdevelopersolusidigital/exports.dart';
import 'package:http/http.dart' as http;

class HomeProvider extends ChangeNotifier {
  NewsResponseModel? newsResponseModel;
  HomeStates homeStates = HomeStates.loading;

  Future loadNews() async {
    this.homeStates = HomeStates.loading;
    notifyListeners();

    try {
      http.Response res = await http.get(
        Uri.parse(
            'https://newsapi.org/v2/top-headlines?country=us&apiKey=f3406eed888048b18982f0dff1d54a98'),
      );

      this.newsResponseModel = NewsResponseModel.fromJson(res.body);
      this.homeStates = HomeStates.standby;
      notifyListeners();
    } on Exception catch (e) {
      this.homeStates = HomeStates.empty;
      notifyListeners();
    }
  }
}
