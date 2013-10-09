class User
  include MongoMapper::Document

  many  :events
  # has_attached_file :profile

  key :first_name,  String
  key :last_name,   String
  key :email,       String
  key :birthday,    String
  key :bio,         String
  key :salt,        String
  key :fish,        String
  key :code,        String
  key :expires_at,  String

  before_validation :encrypt_password

  private

  def authenticate(password)
    self.fish == BCrypt::Engine.hash_secret(password, self.salt)
  end

  def encrypt_password
    unless password.blank?
      self.salt = BCrypt::Engine.generate_salt
      self.fish = BCrypt::Engine.hash_secret(password, self.salt)
    end
  end

end
