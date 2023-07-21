require_relative './spec_helper'

RSpec.describe Loader do
  describe ".call" do
    let(:path) { '../data.txt' }
    let(:result) { File.read(path).split("\n") }
    subject { described_class.new(path) }

    it { is_expected.to be_an_instance_of(described_class) }

    it "returns correct result" do
      expect(subject.call).to eq(result)
      expect(subject.call.count).to eq(result.count)
    end
  end
end