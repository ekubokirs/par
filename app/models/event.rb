class Event
  include MongoMapper::Document

  belongs_to	:user

  key :title,				String
  key :venue,				String
  key :event_type,	String
  key :chore,				Array
  key :supply,			Array

end
