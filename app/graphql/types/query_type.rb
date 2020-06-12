module Types
  class QueryType < Types::BaseObject
    field :most_recent_snapshot, SnapshotType, description: "The mostly recently-updated snapshot of the broker/carrier relationship", null: false

    def most_recent_snapshot
      {}
    end
  end
end
