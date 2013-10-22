class Recipe
  include MongoMapper::Document

  key :supply,		String
  key :direction,	String
  key	:prep_time,	String
  key	:cook_time,	String
  key	:food_item,	String
  key	:food_type,	String
end
