module Types
  class BrokerType < Types::BaseObject
    description "A company that brokers insurance"
    field :name, String, null: false, description: "Name of the company"
    field :description, String, null: true, description: "A paragraph describing the company"

    def name
      Faker::Company.name
    end

    def description
      Faker::Company.catch_phrase
    end
  end
end
