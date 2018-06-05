require './app'

MathJS.createUnit({
  'penny':
    aliases: ['pennies']
  'nickel':
    definition: '5 pennies'
    aliases: ['nickels']
  'dime':
    definition: '2 nickels'
    aliases: ['dimes']
  'quarter':
    definition: '5 nickels'
    aliases: ['quarters']
  'halfdollar':
    definition: '2 quarters'
    aliases: ['halfdollars']
  'dollar':
    definition: '4 quarters'
    aliases: ['dollars']
})

defaultDenoms = -> [
  'dollars'
  'halfdollars'
  'quarters'
  'dimes'
  'nickels'
  'pennies'
]

count_change = (amount, denominations) ->
  denoms = denominations ? defaultDenoms()
  MathJS.
    unit(amount).
    splitUnit(denoms).
    toString()

global.count_change = count_change
