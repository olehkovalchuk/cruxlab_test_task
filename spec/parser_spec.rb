require_relative 'spec_helper'

RSpec.describe Parser do
  describe ".call" do
    let(:path) { '../data.txt' }
    let(:result) { 4 }
    subject { described_class.new(path) }

    it { is_expected.to be_an_instance_of(described_class) }

    it "returns correct result" do
      expect(subject.call).to eq(result)
    end
  end
end