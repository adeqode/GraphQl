module Mutations
  class CreateUser < BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true

    # return type from the mutation
    type Types::UserType

    def resolve(name: , email: )
      User.create( name: name, email: email )
    end

  end
end
