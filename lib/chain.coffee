variants = require './variants'
dictionary = require './dictionary'

module.exports = dive = (begin, end, used) ->

  used = [] if !used?

  if begin == end   # gold!
    return [end]

  if !dictionary.contains(begin) # dead end
    return null

  # spread out!
  breadth = variants.of(begin).filter (variant) ->
    used.indexOf(variant) == -1

  res = [begin]
  used.push begin

  for next in breadth 
    # dive
    rest = dive(next, end, used)

    # join if good
    if rest?
      res = res.concat rest
      break

  res
