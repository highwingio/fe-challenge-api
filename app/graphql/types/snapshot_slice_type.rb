module Types
  class SnapshotSliceType < Types::BaseObject
    description "A slice (for the broker or carrier) of a relationship snapshot"
    field :broker_division, [SnapshotDimensionValueType], null: false
    field :industries, [SnapshotDimensionValueType], null: false
    field :products, [SnapshotDimensionValueType], null: false
    field :premium_range, [SnapshotDimensionValueType], null: false
  end
end
