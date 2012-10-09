variants = require('../../lib/variants.coffee')

describe 'variants', ->
  it 'returns all but a in alpha for a', -> 
    expect( variants.of('a') ).toContain 'b'
    expect( variants.of('a') ).toContain 'c'
    expect( variants.of('a') ).toContain 'z'
    expect( variants.of('a') ).toContain 'r'
    expect( variants.of('a') ).not.toContain 'a'

  it 'variations of words', ->
    expect( variants.of('cat') ).toContain 'aat'
    expect( variants.of('cat') ).toContain 'dat'
    expect( variants.of('cat') ).toContain 'zat'
    expect( variants.of('cat') ).toContain 'clt'
    expect( variants.of('cat') ).toContain 'cmt'
    expect( variants.of('cat') ).toContain 'cam'
    expect( variants.of('cat') ).toContain 'caq'
    expect( variants.of('cat') ).not.toContain 'cat'
 
