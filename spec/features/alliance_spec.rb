# frozen_string_literal: true

require "spec_helper"

describe "Get alliance information" do
  context "when etag not set" do
    let(:options) { {alliance_id: 99_008_595} }

    before { VCR.insert_cassette "esi/alliances/99008595" }

    after { VCR.eject_cassette }

    subject { EveOnline::ESI::Alliance.new(options) }

    specify { expect(subject.not_modified?).to eq(false) }

    specify { expect(subject.scope).to eq(nil) }

    specify do
      expect(subject.as_json).to eq(name: "The Dead Parrots",
        creator_id: 95_078_959,
        creator_corporation_id: 98_573_850,
        ticker: "TDP",
        date_founded: "2018-09-11T19:55:16Z",
        executor_corporation_id: 98_565_696,
        faction_id: nil)
    end

    specify { expect(subject.etag).to eq("5eedb79d062aad2bed4e103e149ebf728be9f2d69b63ecf186f45c1d") }

    specify { expect(subject.error_limit_remain).to eq(100) }

    specify { expect(subject.error_limit_reset).to eq(1) }
  end

  context "when etag is set" do
    let(:options) do
      {
        alliance_id: 99_008_595,
        etag: "5eedb79d062aad2bed4e103e149ebf728be9f2d69b63ecf186f45c1d"
      }
    end

    before { VCR.insert_cassette "esi/alliances/99008595_with_etag" }

    after { VCR.eject_cassette }

    subject { EveOnline::ESI::Alliance.new(options) }

    specify { expect(subject.not_modified?).to eq(true) }

    specify { expect(subject.etag).to eq("5eedb79d062aad2bed4e103e149ebf728be9f2d69b63ecf186f45c1d") }

    specify { expect(subject.error_limit_remain).to eq(100) }

    specify { expect(subject.error_limit_reset).to eq(25) }
  end
end
