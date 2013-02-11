require 'dm-core'  
require 'dm-timestamps'  
require 'dm-validations'  
require 'dm-migrations'  

DataMapper.setup :default, "sqlite://#{Dir.pwd}/school.db"

class User  
    include DataMapper::Resource  
    property :id        , Serial  
    property :username  , String
    property :firstname , String
    property :lastname  , String  
    property :email    	, String	, format: :email_address
    property :password	, String	, length: 10..255
    property :created_at, DateTime 
    property :updated_at, DateTime
    
    has n, :posts
    
    def username= new_username
		@username= new_username.downcase
    end
end

class Post  
    include DataMapper::Resource  
    property :slug       , String   , key: true, unique_index: true, default: lambda { |resource,prop| resource.title.downcase.gsub " ", "-" }  
    property :title      , String   , required: true  
    property :body       , Text     , required: true  
    property :created_at , DateTime  
    property :updated_at , DateTime
    
    belongs_to :user
end 

DataMapper.auto_migrate!  
DataMapper.auto_upgrade!

