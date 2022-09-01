# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject
    field :id, Integer, String, null: false
    field :title, String, null: false
    field :body, String, null: false
    field :user_name, Types::UserType, null: false
  end
end
