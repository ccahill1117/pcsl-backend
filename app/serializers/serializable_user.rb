class SerializableUser < JSONAPI::Serializable::Resource
  type 'users'

  attributes :id, :first_name, :last_name

  # attribute :date do
  #   @object.created_at
  # end

  has_many :user_registrations do
    data do
      @object.user_registrations
    end
  end
end