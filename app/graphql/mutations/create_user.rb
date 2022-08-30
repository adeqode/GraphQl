module Mutations
  class CreateUser < Mutations::BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(name:, email:)
      User.new(name: name, email: email)
      if (user.save)

        {
          name: name,
          errors: []
        }

      else

        {
          user: nil,
          erros: user.erros.full_messages
        }
        
      end
    end
  end
end