require 'spec_helper'

describe EveOnline::ESI::Models::Skill do
  let(:options) { double }

  subject { described_class.new(options) }

  it { should be_a(EveOnline::ESI::Models::Base) }

  describe '#initialize' do
    its(:options) { should eq(options) }
  end

  describe '#as_json' do
    let(:skill) { described_class.new(options) }

    before { expect(skill).to receive(:skill_id).and_return(22_536) }

    before { expect(skill).to receive(:skillpoints_in_skill).and_return(500) }

    before { expect(skill).to receive(:current_skill_level).and_return(1) }

    subject { skill.as_json }

    its([:skill_id]) { should eq(22_536) }

    its([:skillpoints_in_skill]) { should eq(500) }

    its([:current_skill_level]) { should eq(1) }
  end

  describe '#skill_id' do
    before { expect(options).to receive(:[]).with('skill_id') }

    specify { expect { subject.skill_id }.not_to raise_error }
  end

  describe '#skillpoints_in_skill' do
    before { expect(options).to receive(:[]).with('skillpoints_in_skill') }

    specify { expect { subject.skillpoints_in_skill }.not_to raise_error }
  end

  describe '#current_skill_level' do
    before { expect(options).to receive(:[]).with('current_skill_level') }

    specify { expect { subject.current_skill_level }.not_to raise_error }
  end
end
