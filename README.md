# Bin Numbers for Turkish Banks
[![Gem Version](https://badge.fury.io/rb/turkish_bin_numbers.svg)](http://badge.fury.io/rb/turkish_bin_numbers)

Bin numbers used by Turkish Banks. You can query by bin number and get info (bank name, credit card type, etc.) or you can query by bank and card type and get list of bins.

## Requirements

The only requirement is a working Ruby installation.

## Installation

Add it to your Gemfile:

```ruby
gem 'turkish_bin_numbers'
```

and run on terminal:

    $ bundle

or install the gem on terminal.

    $ gem install turkish_bin_numbers


## Usage

**Get info by bin number**

```ruby
TurkishBinNumbers.get(418342)
# => {"bin_number"=>418342, "bank_id"=>24, "bank_name"=>"Türkiye İş Bankası", "bin_type"=>"credit_card", "card_type"=>"Visa"}
```


**Get bin numbers by bank name**

```ruby
TurkishBinNumbers.bins_of_bank("Ziraat Bankası")
# => [454672, 444678, 444676, ...]
```


**Get bank list**

```ruby
TurkishBinNumbers.banks
# => ["ABank", "Akbank", "Aktifbank", ...]
```


**Get bin numbers for non-debit credit cards**

```ruby
TurkishBinNumbers.credit_card_bins
# => [466283, 516458, 522221, ...]
```


**Get bin numbers for debit credit cards**

```ruby
TurkishBinNumbers.debit_card_bins
# => [627768, 466284, 670670, ...]
```


**Get card type of bin number (Visa, MasterCard, American Express, Maestro)**

```ruby
TurkishBinNumbers.detect_card_type(418342)
# => "Visa"
```

<a name="contributing"></a>
## Contributing
1. Fork it ( https://github.com/tgezginis/turkish_bin_numbers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

**Thanks**
- [Onur Bozkurt](https://github.com/onurbozkurt)
- [Serhan Balcı](https://github.com/arghan)
