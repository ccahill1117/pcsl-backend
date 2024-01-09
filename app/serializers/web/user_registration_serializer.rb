module Web
  class UserRegistrationSerializer
    include JSONAPI::Serializer
    attribute :thing
  
    def thing
      object
    end

    # def last_name
    #   self.user.last_name
    # end
  end  
end

