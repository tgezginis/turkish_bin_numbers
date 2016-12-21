require "turkish_bin_numbers/version"
require "json"

module TurkishBinNumbers
  file = File.open(File.join(File.dirname(__FILE__), '/bin_list.json'))
  data = file.read
  file.close
  @data = JSON.parse(data)

  def self.get(bin_number)
    bin = @data.detect {|b| bin_number.to_s =~ /^#{b["bin_number"]}/ }
    bin["card_type"] = detect_card_type(bin_number) if bin
    return bin
  end

  def self.bins_of_bank(bank_name)
    bins = @data.select {|b| bank_name.to_s =~ /^#{b["bank_name"]}/ }
    return bins.map {|b| b["bin_number"]}
  end

  def self.credit_card_bins
    bins = @data.select {|b| b["bin_type"] == "credit_card" }
    return bins.map {|b| b["bin_number"]}
  end

  def self.debit_card_bins
    bins = @data.select {|b| b["bin_type"] == "debit_card" }
    return bins.map {|b| b["bin_number"]}
  end

  def self.banks
    banks = @data.map {|b| b["bank_name"] }
    return banks.uniq
  end

  def self.detect_card_type(bin)
    bin = bin.to_s
    case
    when bin =~ /^(34|37)/
      return "American Express"
    when bin =~ /^4/
      return "Visa"
    when bin =~ /^(51|52|53|54|55)/
      return "MasterCard"
    when bin =~ /^(55018|5020|5038|5612|5893|6304|6759|6761|6762|6763|0604|6390)/
      return "Maestro"
    else
      return nil
    end
  end
end
