module Mutations
	class DestroyUser < BaseMutation
    argument :name, String, required: true

    type Types::UserType

    def resolve(name:)
      user = User.find_by(name: name)

      if user.present?
        user.destroy        
      end

      user
    end
  end
end