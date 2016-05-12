# Bin Numbers for Turkish Banks
[![Gem Version](https://badge.fury.io/rb/turkish_bin_numbers.svg)](http://badge.fury.io/rb/turkish_bin_numbers)

Gives information about bank, card type and debit. Also you can query bin numbers by bank.

## Requirements

The only requirements are working a Ruby installation.

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

**Get bin number details**

```ruby
TurkishBinNumbers.get(418342)
# => {"bin_number"=>418342, "bank_id"=>24, "bank_name"=>"Türkiye İş Bankası", "bin_type"=>"credit_card", "card_type"=>"Visa"}
```


**Get bin numbers by bank name**

```ruby
TurkishBinNumbers.bins_of_bank("Ziraat Bankası")
# => [454672, 444678, 444676, 540134, 540130, 676123, 512440, 476619, 516932, 444677, 407814, 454671, 547287, 542374, 523529, 513662, 527682, 534981, 447504, 413226, 404591, 676124, 533154, 531102, 528208, 454674, 546957, 530905, 549449, 454673, 469884]
```


**Get bin numbers which type is credit card**

```ruby
TurkishBinNumbers.credit_card_bins
# => [466283, 516458, 522221, ...]
```


**Get bin numbers which type is debit card**

```ruby
TurkishBinNumbers.debit_card_bins
# => [627768, 466284, 670670, ...]
```


**Get card type of bin number**

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
