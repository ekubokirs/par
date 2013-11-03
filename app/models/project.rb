class Project
  include MongoMapper::Document

  belongs_to	:event

  key :supply, 				Array
  key :direction,			Array
  key	:prep_time,			String
  key	:total_time,		String
  key	:links,					Array
  key	:project_title,	String

end
