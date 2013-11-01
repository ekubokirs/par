class Project
  include MongoMapper::Document

  belongs_to	:event

  key :supply, 				String
  key :direction,			String
  key	:prep_time,			String
  key	:total_time,		String
  key	:links,					String
  key	:project_title,	String

end
