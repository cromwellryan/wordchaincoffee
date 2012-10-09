di = require '../../lib/dictionary'

describe 'dictionary', ->
  it 'has cot', ->
    expect( di.contains('cot') ).toBeTruthy
