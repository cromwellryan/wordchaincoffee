dictionary = require('./dictionary')

module.exports = 
  of: (word) ->
    alpha = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

    variants = []
    lists = [0...word.length].map (position) ->
      all = []
      n = alpha.map (letter) ->
              chars = word.split('')
              chars[position] = letter 
              chars.join('')
      all = all.concat n


    for list in lists
      variants = variants.concat list

    variants.filter (variant) ->
      word != variant
