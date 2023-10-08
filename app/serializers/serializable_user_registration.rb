class SerializableUserRegistration < JSONAPI::Serializable::Resource
  type 'user_registrations'

  attributes :id, :seasons_id, :is_captain, :division, :rank, :has_paid, :user_id

  # attribute :date do
  #   @object.created_at
  # end

  belongs_to :user

  # has_many :comments do
  #   data do
  #     @object.published_comments
  #   end
  # end
end