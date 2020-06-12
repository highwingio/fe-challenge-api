module Types
  class SnapshotType < Types::BaseObject
    description "a snapshot of the current state of the broker/carrier relationship"
    field :broker_slice, SnapshotSliceType, null: false, resolver_method: :broker_snapshot_slice
    field :carrier_slice, SnapshotSliceType, null: false, resolver_method: :carrier_snapshot_slice
    field :broker, BrokerType, null: false
    field :carrier, CarrierType, null: false
    field :year, Integer, null: false

    def broker_snapshot_slice
      {
        broker_division: [
          {premium: 348_304_933.12,
           title: "California",
           proportion: 52.47},
          {premium: 198_673_593.88,
           title: "New York",
           proportion: 29.93},
          {premium: 93_392_311.01,
           title: "Texas",
           proportion: 14.07},
          {premium: 23_392_311.01,
           title: "Illinois",
           proportion: 3.52}
        ],
        industries: [
          {premium: 301_881_574.51,
           title: "Mining",
           proportion: 45.48},
          {premium: 220_803_111.74,
           title: "Financial Services",
           proportion: 33.27},
          {premium: 118_627_191.50,
           title: "Technology",
           proportion: 17.87},
          {premium: 22_451_271.27,
           title: "Retail",
           proportion: 3.38}
        ],
        products: [
          {premium: 282_431_219.91,
           title: "General Liability",
           proportion: 42.55},
           {premium: 224_484_696.00,
           title: "Commercial Property",
           proportion: 33.82},
          {premium: 120_207_506.29,
           title: "Workers Compensation",
           proportion: 18.11},
          {premium: 36_639_725.82,
           title: "Excess Liability",
           proportion: 5.52}
        ],
        premium_range: [
          {premium: 410_881_574.51,
           title: "Over $50,000",
           proportion: 61.90},
          {premium: 165_940_787.25,
           title: "$10,000 - $50,000",
           proportion: 24.99},
          {premium: 80_940_787.25,
           title: "$1,000 - $10,000",
           proportion: 12.19},
          {premium: 6000000.01,
           title: "Under $1,000",
           proportion: 0.90}
        ]
      }
    end

    def carrier_snapshot_slice
      {
        broker_division: [
          {premium: 98_485_192.00,
           title: "California",
           proportion: 47.09},
           {premium: 76_947_176.83,
           title: "New York",
           proportion: 36.79},
          {premium: 23_894_092.21,
           title: "Texas",
           proportion: 11.42},
          {premium: 9_837_997.22,
           title: "Illinois",
           proportion: 4.70}
        ],
        industries: [
          {premium: 107_761_528.89,
           title: "Construction",
           proportion: 51.52},
          {premium: 68_940_605.44,
           title: "Financial Services",
           proportion: 32.96},
          {premium: 16_963_237.56,
           title: "Mining",
           proportion: 8.11},
          {premium: 15_478_169.91,
           title: "Retail",
           proportion: 7.4}
        ],
        products: [
          {premium: 77_139_852.21,
           title: "Commercial Property",
           proportion: 36.88},
          {premium: 45_095_857.20,
           title: "Workers Compensation",
           proportion: 21.56},
          {premium: 45_095_857.20,
           title: "General Liability",
           proportion: 21.56},
          {premium: 41_832_891.65,
           title: "Excess Liability",
           proportion: 20.00}
        ],
        premium_range: [
          {premium: 147_565_525.30,
           title: "$10,000 - $50,000",
           proportion: 70.55},
          {premium: 24_367_659.39,
           title: "Over $50,000",
           proportion: 11.65},
          {premium: 31_437_418.08,
           title: "Under $1,000",
           proportion: 15.03},
          {premium: 5_793_855.49,
           title: "$1,000 - $10,000",
           proportion: 2.77},
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
