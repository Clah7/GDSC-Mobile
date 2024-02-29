import 'package:news_app/models/slider_model.dart';

List<SliderModel> getSliders() {
  List<SliderModel> sliders = [];

  SliderModel sliderModel = SliderModel();
  sliderModel.image = "images/business.jpg";
  sliders.add(sliderModel);

  sliderModel = SliderModel();
  sliderModel.image = "images/health.jpg";
  sliders.add(sliderModel);

  sliderModel = SliderModel();
  sliderModel.image = "images/sport.jpg";
  sliders.add(sliderModel);

  sliderModel = SliderModel();
  sliderModel.image = "images/entertainment.jpg";
  sliders.add(sliderModel);

  return sliders;
}
