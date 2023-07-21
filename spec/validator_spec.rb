require_relative 'spec_helper'

RSpec.describe Validator do
  describe ".call" do
    let(:line) { 'a 1-5: abcdj' }
    subject { described_class.new(line) }

    it { is_expected.to be_an_instance_of(described_class) }

    context "with valid password" do
      it 'returns true' do
        expect(subject.call).to be true
      end
    end
    context "with invalid password" do
      let(:line) { 'z 2-4: asfalseiruqwo' }
      it 'returns false' do
        expect(subject.call).to be false
      end
    end
  end
end