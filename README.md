# Wintr

A number to word converter.

## Install

    gem install wintr

## Usage

    Wintr::Number.new(0).to_w
      # => "zero"

    Wintr::Number.new(9*9).to_w
      # => "eighty one"

    Wintr::Number.new(951_213_724).to_w
      # => "nine hundred and fifty one million two hundred and thirteen thousand seven hundred and twenty four"
