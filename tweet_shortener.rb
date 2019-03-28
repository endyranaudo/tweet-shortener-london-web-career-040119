require 'pry'

def dictionary
  dictionary = {
    "too" => "2",
    "to" => "2",
    "two" =>"2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


def word_substituter(tweet)
  shortened_tweet = []
  word_to_change = dictionary.keys
  tweet.split(" ").each do |word|
    if word == word_to_change(downcase)
      shortened_tweet << word
    else
      shortened_tweet << word
    end
  end
  shortened_tweet.join()
end


def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end


def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    "#{word_substituter(tweet)[0..133]} (...)"
  else
    word_substituter(tweet)
  end
end
