# frozen_string_literal: true

RSpec.describe Odin::SubStrings do
  it 'has a version number' do
    expect(described_class::VERSION).not_to be nil
  end

  describe '.substrings' do
    subject { described_class.substrings(string, dictionary) }

    let(:string) { 'below' }
    let(:dictionary) { %w[below be low going it i sit] }

    context 'when given an empty string' do
      let(:string) { '' }
      it { is_expected.to eq({}) }
    end

    context 'when given a string and a dictionary with that string in it' do
      let(:string) { 'below' }
      let(:dictionary) { ['below'] }
      it { is_expected.to eq({ 'below' => 1 }) }
    end

    context 'when the only dictionary work appears twice in the string' do
      let(:string) { 'Sit it down' }
      let(:dictionary) { ['it'] }
      it { is_expected.to eq({ 'it' => 2 }) }
    end

    context 'with a single word' do
      let(:string) { 'below' }
      let(:dictionary) do
        %w[
          below down go going horn how howdy
          it i low own part partner sit
        ]
      end
      let(:expected_result) { { 'below' => 1, 'low' => 1 } }
      it { is_expected.to eq(expected_result) }
    end

    context 'with multiple words' do
      let(:string) { 'Howdy partner, sit down! How\'s it going?' }
      let(:dictionary) do
        %w[
          below down go going horn how howdy
          it i low own part partner sit
        ]
      end
      let(:expected_result) do
        {
          'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2,
          'howdy' => 1, 'it' => 2, 'i' => 3, 'own' => 1,
          'part' => 1, 'partner' => 1, 'sit' => 1
        }
      end
      it { is_expected.to eq(expected_result) }
    end
  end
end
