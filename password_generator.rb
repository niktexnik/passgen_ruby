# frozen_string_literal: true

class PasswordGenerator
  VOWELS = %w[a e i o u]
  NON_VOWELS = %w[b c d f g h j k l m n p q r s t v w x z]

  def self.process(passize)
    passsword = []
    vowels_upper = VOWELS.map(&:upcase)
    non_vowels_upper = NON_VOWELS.map { |char| char.upcase }
    all_vowels = (VOWELS + vowels_upper).shuffle
    all_non_vowels = (NON_VOWELS + non_vowels_upper).shuffle
    i = 0
    while i < passize.to_i
      i += 1
      if i.odd?
        passsword << all_vowels[rand(all_vowels.length)]
      else
        passsword << all_non_vowels[rand(all_non_vowels.length)]
      end
    end
    passsword.join
  end
end
