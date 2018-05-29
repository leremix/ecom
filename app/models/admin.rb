class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # https://github.com/plataformatec/devise/wiki/How-To:-Add-an-Admin-Role
  devise :database_authenticatable, :trackable, :timeoutable, :lockable 

end
