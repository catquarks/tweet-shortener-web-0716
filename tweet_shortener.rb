require "pry"

def dictionary
	dict = {
		"be" => "b",
		"hello" => "hi",
		"to" => "2",
		"too" => "2",
		"two" => "2",
		"for" => "4",
		"For" => "4",
		"four" => "4",
		"you" => "u",
		"at" => "@",
		"and" => "&"
	}
end

def word_substituter(string)
	array = string.split # instead of normal split & join, write a method that takes apart string, removes punctuation and lowercases it; then write another method to put it back together
	#binding.pry
	array.collect! do |word|
		if dictionary.keys.include?(word)
			word = dictionary[word]
		else
			word = word
		end
	end
	string = array.join(" ")
end

def bulk_tweet_shortener(array)
	array.collect! do |tweet|
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(string)
	if string.length > 140
		array = string.split
		array.collect! do |word|
			if dictionary.keys.include?(word)
				word = dictionary[word]
			else
				word = word
			end
		end
		string = array.join(" ")
	end
	string
end

def shortened_tweet_truncator(string)
	selective_tweet_shortener(string)
	if string.length > 140
		string[137..string.length] = "..."
	else
		string
	end
	string
end


# bulk_tweets = ["OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"]

# tweet = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right? OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"

# puts shortened_tweet_truncator(tweet)

