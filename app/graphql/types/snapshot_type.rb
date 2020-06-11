module Types
  class SnapshotType < Types::BaseObject
    description "a snapshot of the current state of the broker/carrier relationship"
    field :broker_slice, SnapshotSliceType, null: false, resolver_method: :random_snapshot_slice
    field :carrier_slice, SnapshotSliceType, null: false, resolver_method: :random_snapshot_slice
    field :broker, BrokerType, null: false
    field :carrier, CarrierType, null: false
    field :year, Integer, null: false

    def random_snapshot_slice
      {
        broker_division: [
          {premium: 100_000_000,
           title: "California",
           proportion: 0.4},
          {premium: 75_000_000,
           title: "New York",
           proportion: 0.3},
          {premium: 50_000_000,
           title: "Texas",
           proportion: 0.2},
          {premium: 25_000_000,
           title: "Illinois",
           proportion: 0.1}
        ],
        industry_division: [
          {premium: 100_000_000,
           title: "Mining",
           proportion: 0.4},
          {premium: 75_000_000,
           title: "Financial Services",
           proportion: 0.3},
          {premium: 50_000_000,
           title: "Technology",
           proportion: 0.2},
          {premium: 25_000_000,
           title: "Retail",
           proportion: 0.1}
        ],
        policy_type: [
          {premium: 100_000_000,
           title: "General Liability",
           proportion: 0.4},
          {premium: 75_000_000,
           title: "Commercial Property",
           proportion: 0.3},
          {premium: 50_000_000,
           title: "Workers Compensation",
           proportion: 0.2},
          {premium: 25_000_000,
           title: "Excess Liability",
           proportion: 0.1}
        ],
        premium_range: [
          {premium: 100_000_000,
           title: "Under $1,000",
           proportion: 0.4},
          {premium: 75_000_000,
           title: "$1,000 - $10,000",
           proportion: 0.3},
          {premium: 50_000_000,
           title: "$10,000 - $50,000",
           proportion: 0.2},
          {premium: 25_000_000,
           title: "Over $50,000",
           proportion: 0.1}
        ]
      }
    end

    def year
      Date.today.year
    end

    def broker
      {}
    end

    def carrier
      {}
    end
  end
end
