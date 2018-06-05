require './testHelper'
require '../src/basicMath'

describe 'Math basics', ->
  it 'input of 1 and 1 should be 2', ->
    expect(add 1, "1").to.equal 2

# describe 'Typical JavaScript', ->
#   describe 'does not preserve types', ->
#     it '1 + "1" becomes string "11"', ->
#       expect(1 + "1").to.equal "11"
#     it '"1" + 1 becomes string "11"', ->
#       expect("1" + 1).to.equal "11"
# 
#     it '0.1 + 0.2 becomes 0.30000000000000004', ->
#       expect(0.1 + 0.2).to.equal 0.30000000000000004
# 
#     it '2 * "2" becomes integer 4', ->
#       expect(2 * "2").to.equal 4
#     it '"2" * 2 becomes integer 4', ->
#       expect("2" * 2).to.equal 4
# 
#     it '5 - "5" becomes integer 0', ->
#       expect(5 - "5").to.equal 0
#     it '"5" - 5 becomes integer 0', ->
#       expect("5" - 5).to.equal 0
# 
#     it '9.00 / "3.00" becomes integer 3', ->
#       expect(9.00 / "3.00").to.equal 3
#     it '"9.00" / 3.00 becomes integer 3', ->
#       expect("9.00" / 3.00).to.equal 3
# 
# 
# describe 'Calculates', ->
#   a = "400"
#   b = "700"
#   c = "1250"
# 
#   it 'adds', ->
#     expect(add a, b).to.equal 1100
# 
#   it 'adds 0.1 and 0.2 is still 0.30000000000000004', ->
#     expect(add 0.1, 0.2).to.equal 0.30000000000000004
# 
#   it 'which can be corrected with precision', ->
#     adding = add(0.1, 0.2)
# 
#     adding = MathJS.format(
#       adding
#       {precision: 14}
#     )
#     adding = MathJS.number(adding)
# 
#     expect(adding).to.equal 0.3
# 
#   it 'adds fraction 1/10 & 2/10 to equal 3/10', ->
#     fracA = MathJS.fraction(1,10)
#     fracB = MathJS.fraction(2,10)
#     adding = add(
#       fracA
#       fracB
#     )
#     expect(
#       MathJS.format(
#         adding
#         {fraction: 'ratio'}
#       )
#     ).to.equal('3/10')
#     adding = MathJS.number(adding)
#     expect(adding).to.equal(0.3)
# 
#   it 'multiplies', ->
#     expect(mul a, b).to.equal 280000
