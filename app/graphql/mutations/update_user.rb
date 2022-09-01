module Mutations
	class UpdateUser < BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true

    # return type from the mutation
    type Types::UserType

    def resolve(name:, email:)
      user = User.find_by(name: name)

      if user.present?
        user.update(email: email)
      end

      user
    end
	end
end