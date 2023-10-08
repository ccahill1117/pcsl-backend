class SerializableUserRegistration < JSONAPI::Serializable::Resource
  type 'user_registrations'

  attributes :id, :seasons_id, :is_captain, :division, :rank, :has_paid, :user_id, :user, :regular

  attribute :user do
    { first_name: @object&.user&.first_name, last_name: @object&.user&.last_name }
  end

  belongs_to :user_registration

  # has_many :comments do
  #   data do
  #     @object.published_comments
  #   end
  # end
end