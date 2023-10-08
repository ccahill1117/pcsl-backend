class SerializableUserRegistration < JSONAPI::Serializable::Resource
  type 'user_registrations'

  attributes :id, :seasons_id, :is_captain, :division, :rank, :has_paid, :user_id, :user

  attribute :user do
    { created_at: @object.user.created_at, first_name: @object.user.first_name}
  end

  belongs_to :user_registration

  # has_many :comments do
  #   data do
  #     @object.published_comments
  #   end
  # end
end