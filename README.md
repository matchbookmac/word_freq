#Word Frequency

(heroku)

By Ian MacDonald (https://github.com/matchbookmac)
@ Epicodus Programming School, Portland, OR
MIT License. Copyright 2015 Ian C. MacDonald.

##Think you use a word too much? Find out!

Word Frequency is a web application that lets a user submit a word, and some corresponding text. Once submitted, the application will tell the user how many times the word appears in the corresponding text.

## Installation

Clone this repo with
```console
> git clone https://github.com/matchbookmac/word_freq.git
```

Navigate to the top level directory `word_freq` with
```console
> cd /word_freq
```

Run bundler to install the required gems
```console
> bundle install
```

Run specs in `word_freq` with
```console
> rspec
```

If all specs pass, start app at (localhost:4567), with
```console
> ruby app.rb
```

## The method
### `String#word_freq`

When the user submits a word and the same word, the application will tell the user if the word is in the sentence.

When the user submits a word and a different word, the application will tell the user if the word is in the sentence.

When the user submits a word and the same word that is capitalized, the application will tell the user if the word is in the sentence.

When the user submits a word and the same word, the application will tell the user the word occurs 1 time in the sentence.

When the user submits a word and a different word, the application will tell the user the word does not occur in the sentence.

When the user submits a word and a sentence containing the word, the application will tell the user the word occurs once in the sentence.

When the user submits a word and a sentence containing the word multiple times, the application will tell the user how many times the word occurs in the sentence.

When the user submits a word and a sentence that does not contain the word, the application will tell the user the sentence does not contain the word.

The method is defined for the String class in ruby. As such the method is called on a string, which is the word to be searched for; and also takes a string as an argument, through which the method will search for the word provided. The method will return a fixnum of the number of times the word was found in the the string provided. If the word was not found, the method will return `0`.

```ruby
> path.word_freq('Little red riding hood walked down the path. On that path she met a ...')
> 2
> path.word_freq('There she was just walkin\' down the street. Singin\' \'Do wah diddy, diddy, dum diddy do')
> 0
```
