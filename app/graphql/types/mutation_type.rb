module Types
  class MutationType < BaseObject
    # TODO: remove me
    field :create_user, mutation: Mutations::CreateUser
    field :update_user, mutation: Mutations::UpdateUser
    field :destroy_user, mutation: Mutations::DestroyUser
  end
end