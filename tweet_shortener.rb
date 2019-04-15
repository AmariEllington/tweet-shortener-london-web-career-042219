# Write your code here.
def dictionary
  substitute = {
  "hello" => 'hi'
  "to, two, too" => '2'
  "for, four" => '4'
  'be' => 'u'
  "at" => "@"
  "and" => "&"
}
end

def word_substituter(string_of_a_tweet)
  string_of_a_tweet.split(" ").map do |word|
        if dictionary.keys.include?(word.downcase)
          word = dictionary[word.downcase]
        else
          word
      end
    end.join(" ")
end
