import 'package:news_app/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categories = [];
  
  CategoryModel categoryModel = CategoryModel();

  categoryModel.categoryName = "Business";
  categoryModel.image = "images/business.jpg";
  categories.add(categoryModel);
  
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.image = "images/entertainment.jpg";
  categories.add(categoryModel);
  
  categoryModel = CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.image = "images/general.jpg";
  categories.add(categoryModel);
  
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.image = "images/health.jpg";
  categories.add(categoryModel);
  
  categoryModel = CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.image = "images/sport.jpg";
  categories.add(categoryModel);

  return categories;
}
