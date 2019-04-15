# Write your code here.
def dictionary
  substitute = {
  "hello" => 'hi',
  "to" => '2',
  "two" => '2',
  "too" => '2',
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  "you" => 'u',
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
     tweet.split(" ").map do |word|
        if dictionary.keys.include?(word.downcase)
          word = dictionary[word.downcase]
        else
          word
      end
    end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.map do |short_tweet|
      puts word_substituter(short_tweet)
    end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).chars.length > 140  
    truncated = word_substituter(tweet).chars[0..136].push("...").join("")
  else 
    word_substituter(tweet) 
  end 
end 

