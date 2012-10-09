chain = require '../../lib/chain'

describe 'word chain', ->
  it 'cat to cat', ->
    res = chain('cat', 'cat')

    expect(res).toEqual ['cat']

  it 'beginning is not a word', ->
    res = chain 'cit', 'cat'

    expect(res).toEqual null

  it 'one step', ->
    res = chain 'cot', 'cat'

    expect(res).toEqual ['cot', 'cat']
