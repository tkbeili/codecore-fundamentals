class User
  include DataMapper::Resource

  property :id,          Serial    # An auto-increment integer key
  property :first_name,  String    # A varchar type string, for short strings
  property :last_name,   String    # A varchar type string, for short strings
  property :email,       String    # A varchar type string, for short strings
  property :created_at, DateTime 

end