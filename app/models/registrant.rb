class Registrant
  include MongoMapper::Document

  key :email,				String
  key :code,				String
  key :expires_at,	String

  private

  def set_code_and_expires_at
  	self.code = SecureRandom.urlsafe_base64
  	self.expires_at = Time.now + 4.hours
  end

end
