require './app'

add = (a, b) ->
  MathJS.add(a, b)

global.add = add

# add = (a, b) ->
#   MathJS.chain(a).add(b).done()
# 
# mul = (a, b) ->
#   MathJS.chain(a).multiply(b).done()
# 
# global.add = add
# global.mul = mul
