# frozen_string_literal: true

require "spec_helper"

describe "Return a mail" do
  context "when etag not set" do
    before { VCR.insert_cassette "esi/mail/376045681" }

    after { VCR.eject_cassette }

    let(:options) do
      {
        character_id: 1_337_512_245,
        mail_id: 376_045_681,
        token: "token123"
      }
    end

    subject { EveOnline::ESI::CharacterGetMail.new(options) }

    specify { expect(subject.not_modified?).to eq(false) }

    specify do
      expect(subject.as_json).to eq(body: "<font size=\"12\" color=\"#bfffffff\">moving</font>",
        from_id: 1_208_274_826,
        read: true,
        subject: "moving",
        timestamp: "2019-06-10 07:50:00.000000000 +0000")
    end

    specify { expect(subject.label_ids).to eq([4]) }

    specify { expect(subject.recipients.size).to eq(1) }

    specify do
      expect(subject.recipients.first.as_json).to eq(recipient_id: 98_134_807,
        recipient_type: "corporation")
    end

    specify { expect(subject.etag).to eq("90dba7f7a6e60bfe8527b9f5112b9ca588c8f57d01415717be525a91") }

    specify { expect(subject.error_limit_remain).to eq(100) }

    specify { expect(subject.error_limit_reset).to eq(47) }
  end

  context "when etag is set" do
    before { VCR.insert_cassette "esi/mail/376045681_with_etag" }

    after { VCR.eject_cassette }

    let(:options) do
      {
        character_id: 1_337_512_245,
        mail_id: 376_045_681,
        token: "token123",
        etag: "90dba7f7a6e60bfe8527b9f5112b9ca588c8f57d01415717be525a91"
      }
    end

    subject { EveOnline::ESI::CharacterGetMail.new(options) }

    specify { expect(subject.not_modified?).to eq(true) }

    specify { expect(subject.etag).to eq("90dba7f7a6e60bfe8527b9f5112b9ca588c8f57d01415717be525a91") }

    specify { expect(subject.error_limit_remain).to eq(100) }

    specify { expect(subject.error_limit_reset).to eq(21) }
  end
end
