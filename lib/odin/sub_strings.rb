# frozen_string_literal: true

require_relative 'sub_strings/version'

# The Odin Project SubStrings project
module Odin
  # Contains the SubStrings implementation
  module SubStrings
    # Determine the number of times a set of words occurs in a given string
    #
    # Returns a hash whose keys are the words from the given dictionary (set of
    # words) found in the string. The values are the number of occurances of that
    # word. If a word from the dictionary is not found, it is not included in the
    # result.
    #
    # Word search is not case sensative.
    #
    # @example
    #   dictionary = ['this', 'is', 's', 'not found']
    #   Odin::SubStrings.substrings('This is a string', dictionary)
    #   #=> { 'this' => 1, 'is' => 2, 's' => 3 }
    #
    # @param string [String] the string to search
    #
    # @param dictionary [Array<String>] the set of words to count in the given string
    #
    # @return [Hash<String, Intege>}] the words from dictionary found in the given string and their count
    #
    def self.substrings(string, dictionary)
      return {} if string.empty?

      result = Hash.new(0)
      dictionary.each do |word|
        word_count = word_count(string, word)
        result[word] += word_count if word_count.positive?
      end
      result
    end

    def self.word_count(string, word)
      string = string.downcase
      word = word.downcase
      index = -1
      count = 0
      until (index = string.index(word, index + 1)).nil?
        count += 1
      end
      count
    end
  end
end
