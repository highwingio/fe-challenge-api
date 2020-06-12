module Types
  class SnapshotDimensionValueType < Types::BaseObject
    description "A individual value for a specific snapshot dimension"
    field :premium, Float, null: false, description: "Premium (in $) represented by this dimension value"
    field :title, String, null: false, description: "Description for this dimension value"
    field :proportion, Float, null: false, description: "Proportion of the whole that this value represents"
  end
end
