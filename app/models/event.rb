class Event
  include MongoMapper::Document

  key :title,				String
  key :venue,				String
  key :event_type,	String
  key :chore,				Array
  key :supply,			Array

end
