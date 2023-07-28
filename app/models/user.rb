class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self


  def generate_jwt
  JWT.encode({ id: id,
    exp: 5.days.from_now.to_i },
    Rails.application.secrets.secret_key_base)
  end
end
