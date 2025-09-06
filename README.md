# Odin SubStrings Project

Implement `Odin::SubStrings.substrings` which determines the number of times a set or
words occurs in a given string.

[Odin Sub Strings Project](https://www.theodinproject.com/lessons/ruby-sub-strings)

[Solution Code](lib/odin/sub_strings.rb)

[RSpec Tests](spec/odin/sub_strings_spec.rb)

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add odin-sub_strings
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install odin-sub_strings
```

## Usage

Determine the number of times a set of words occurs in a given string

Returns a hash whose keys are the words from the given dictionary (set of words)
found in the string. The values are the number of occurances of that word. If a word
from the dictionary is not found, it is not included in the result.

Word search is not case sensative.

```ruby
dictionary = ['this', 'is', 's', 'not found']
Odin::SubStrings.substrings('This is a string', dictionary)
=> { 'this' => 1, 'is' => 2, 's' => 3 }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake
spec` to run the tests. You can also run `bin/console` for an interactive prompt that
will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push git
commits and the created tag, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/jcouball/odin-sub_strings. This project is intended to be a safe,
welcoming space for collaboration, and contributors are expected to adhere to the
[code of
conduct](https://github.com/jcouball/odin-sub_strings/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT
License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Odin::SubStrings project's codebases, issue trackers,
chat rooms and mailing lists is expected to follow the [code of
conduct](https://github.com/jcouball/odin-sub_strings/blob/main/CODE_OF_CONDUCT.md).
