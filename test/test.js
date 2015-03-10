function sum(a, b){
  return a + b;
}

var chai = require('chaijs/chai');
var assert = chai.assert;
var expect = chai.expect;
chai.should();

describe('Foo', function(){

  it('assert', function(){
    assert.equal('foo', 'foo');
  })

  it('expect', function(){
    // 
    expect('foo').to.equal('foo');
  })

  it('should', function(){
    ('foo').should.equal('foo');
  })

  it('sum', function(){
    (sum(1,2)).should.equal(3);
  })
})
