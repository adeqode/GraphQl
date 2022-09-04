module Mutations
	class UpdateUser < BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true

    # return type from the mutation
    type Types::UserType

    def resolve(name:, email:)
      user = User.where(name: name).first

      unless user.blank?
        user.update(email: email)
      else    
        raise GraphQL::ExecutionError, "No User found with name: #{name}"
      end

      user
    end
	end
end