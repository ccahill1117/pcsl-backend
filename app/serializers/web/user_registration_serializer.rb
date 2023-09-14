module Web
  class UserRegistrationSerializer
    include JSONAPI::Serializer
    attributes :id
    # :first_name, :last_name
  
    # def first_name
    #   # binding.pry
    #   self.user.first_name
    # end

    # def last_name
    #   self.user.last_name
    # end
  end  
end

