class Application < ActiveRecord::Base
  attr_accessible :birthday, :fullname, :gender, :number, :status
end
