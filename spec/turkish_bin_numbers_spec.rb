require 'spec_helper'

describe TurkishBinNumbers do
  before { @bins_file_path = File.join(File.dirname(__FILE__), '../lib/bin_list.json') }

  it 'should have bin_list.json file' do
    expect(File).to exist(@bins_file_path)
  end

  it 'should return bin number details' do
    bin_detail = TurkishBinNumbers.get(418342)
    expect(bin_detail).not_to be_nil
    expect(bin_detail["bin_number"]).to eq(418342)
  end

  it 'should return nil unless a bin number exists' do
    bin_detail = TurkishBinNumbers.get(123456)
    expect(bin_detail).to be_nil
  end

  it 'should return credit card bin type' do
    bin_detail = TurkishBinNumbers.get(418342)
    expect(bin_detail["bin_type"]).to eq("credit_card")
  end

  it 'should return bin numbers of Ziraat Bankası' do
    bins_of_bank = TurkishBinNumbers.bins_of_bank("Ziraat Bankası")
    expect(bins_of_bank).not_to be_nil
  end

  it 'should return bin numbers which type is credit card' do
    credit_card_bins = TurkishBinNumbers.credit_card_bins
    expect(credit_card_bins).not_to be_nil
  end

  it 'should return bin numbers which type is debit card' do
    debit_card_bins = TurkishBinNumbers.debit_card_bins
    expect(debit_card_bins).not_to be_nil
  end

  it 'should return card type of bin number' do
    card_type = TurkishBinNumbers.detect_card_type(418342)
    expect(card_type).not_to be_nil
    expect(card_type).to eq("Visa")
  end
end
