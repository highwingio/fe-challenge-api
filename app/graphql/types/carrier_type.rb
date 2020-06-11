module Types
  class CarrierType < Types::BaseObject
    description "A company that underwrites insurance"
    field :name, String, null: false, description: "Name of the company"

    def name
      Faker::Company.name
    end
  end
end
