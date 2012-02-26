# Wintr

A number to word converter.  Integers up to a maximum of 999 duotrigintillion (American) can be handled!  See Russ Rowlett's discussion on [Names for Large Numbers](http://www.unc.edu/~rowlett/units/large.html)

## Install

    gem install wintr

## Usage

    Wintr::Number.new(0).to_w
      # => "zero"

    Wintr::Number.new(9*9).to_w
      # => "eighty one"

    Wintr::Number.new(951_213_724).to_w
      # => "nine hundred and fifty one million two hundred and thirteen thousand seven hundred and twenty four"

## Licence

Released under the MIT License. See the [LICENCE.md](https://github.com/headleyra/wintr/blob/master/LICENCE.md) file for further details.


