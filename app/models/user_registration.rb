class UserRegistration < ApplicationRecord
  include ActiveModel::Serializers::JSON

  belongs_to :user
end
