require './testHelper'
require '../src/coinCounter'

describe 'Makes change', ->
  it 'should produce denominations of change', ->
    expect(
      count_change('831 pennies')
    ) . to . equal '
      8 dollars,\
      0 halfdollars,\
      1 quarters,\
      0 dimes,\
      1 nickels,\
      1 pennies
    '

  it 'can handle specific small change only', ->
    denominations = ['dimes', 'nickels', 'pennies']

    expect(
      count_change('831 pennies', denominations)
    ) . to . equal '
      83 dimes,\
      0 nickels,\
      1 pennies
    '
