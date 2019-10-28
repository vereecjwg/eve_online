# frozen_string_literal: true

require 'spec_helper'

describe EveOnline::ESI::Models::War do
  let(:options) { double }

  subject { described_class.new(options) }

  it { should be_a(EveOnline::ESI::Models::Base) }

  describe '#initialize' do
    its(:options) { should eq(options) }
  end

  describe '#as_json' do
    let(:war) { described_class.new(options) }

    let(:declared) { double }

    let(:finished) { double }

    let(:mutual) { double }

    let(:open_for_allies) { double }

    let(:retracted) { double }

    let(:started) { double }

    before { expect(war).to receive(:declared).and_return(declared) }

    before { expect(war).to receive(:finished).and_return(finished) }

    before { expect(war).to receive(:war_id).and_return(615_578) }

    before { expect(war).to receive(:mutual).and_return(mutual) }

    before { expect(war).to receive(:open_for_allies).and_return(open_for_allies) }

    before { expect(war).to receive(:retracted).and_return(retracted) }

    before { expect(war).to receive(:started).and_return(started) }

    subject { war.as_json }

    its([:declared]) { should eq(declared) }

    its([:finished]) { should eq(finished) }

    its([:war_id]) { should eq(615_578) }

    its([:mutual]) { should eq(mutual) }

    its([:open_for_allies]) { should eq(open_for_allies) }

    its([:retracted]) { should eq(retracted) }

    its([:started]) { should eq(started) }
  end

  describe '#declared' do
    context 'when declared is present' do
      let(:declared) { double }

      before { expect(options).to receive(:[]).with('declared').and_return(declared) }

      before do
        #
        # subject.parse_datetime_with_timezone(declared)
        #
        expect(subject).to receive(:parse_datetime_with_timezone).with(declared)
      end

      specify { expect { subject.declared }.not_to raise_error }
    end

    context 'when declared not present' do
      before { expect(options).to receive(:[]).with('declared').and_return(nil) }

      before { expect(subject).not_to receive(:parse_datetime_with_timezone) }

      specify { expect { subject.declared }.not_to raise_error }
    end
  end

  describe '#finished' do
    context 'when finished is present' do
      let(:finished) { double }

      before { expect(options).to receive(:[]).with('finished').and_return(finished) }

      before do
        #
        # subject.parse_datetime_with_timezone(finished)
        #
        expect(subject).to receive(:parse_datetime_with_timezone).with(finished)
      end

      specify { expect { subject.finished }.not_to raise_error }
    end

    context 'when finished not present' do
      before { expect(options).to receive(:[]).with('finished').and_return(nil) }

      before { expect(subject).not_to receive(:parse_datetime_with_timezone) }

      specify { expect { subject.finished }.not_to raise_error }
    end
  end

  describe '#war_id' do
    before { expect(options).to receive(:[]).with('id') }

    specify { expect { subject.war_id }.not_to raise_error }
  end

  describe '#mutual' do
    before { expect(options).to receive(:[]).with('mutual') }

    specify { expect { subject.mutual }.not_to raise_error }
  end

  describe '#open_for_allies' do
    before { expect(options).to receive(:[]).with('open_for_allies') }

    specify { expect { subject.open_for_allies }.not_to raise_error }
  end

  # def retracted
  #   retracted = options['retracted']
  #
  #   parse_datetime_with_timezone(retracted) if retracted
  # end
  #
  # def started
  #   started = options['started']
  #
  #   parse_datetime_with_timezone(started) if started
  # end

end
