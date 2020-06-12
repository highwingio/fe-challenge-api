require "rails_helper"
require "pp"

RSpec.describe "BrokerSnapshot", type: :request do
  let(:query_string) do
    <<-GQL
    query getBrokerSnapshot {
      mostRecentSnapshot {
        brokerSlice {
          brokerDivision {
            ...valueFields
          }
          industries {
            ...valueFields
          }
          products {
            ...valueFields
          }
          premiumRange {
            ...valueFields
          }
        }
        carrierSlice {
          brokerDivision {
            ...valueFields
          }
          industries {
            ...valueFields
          }
          products {
            ...valueFields
          }
          premiumRange {
            ...valueFields
          }
        }
        broker {
          name
          description
        }
        carrier {
          name
        }
        year
      }
    }

    fragment valueFields on SnapshotDimensionValue {
      premium
      title
      proportion
    }
    GQL
  end

  let(:result) { FeChallengeApiSchema.execute(query_string) }

  it "runs and returns data in the expected shape" do
    pp result
    expect(result["errors"]).to be_nil
    expect(result["data"]).not_to be_nil
  end
end
