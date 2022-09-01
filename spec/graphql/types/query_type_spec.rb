
require "rails_helper"

RSpec.describe "testing queries" do

  it "checks if the users are not blank" do
    result = DemoSchema.execute(query)
    expect(result.dig("data", "users")).not_to be_blank
  end

end

def query
  query = <<~GRAPHQL
    {
      users
    }
  GRAPHQL

  return query
end
