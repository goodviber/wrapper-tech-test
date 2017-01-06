require 'spec_helper'
require_relative '../wrapper'
#just some text here
describe Wrapper do
  it 'works with spaces' do
    word_wrap = Wrapper.new
    wrapped_string = word_wrap.wrap('hello there', 5)
    expect(wrapped_string).to eq "hello\nthere\n"
  end

  it 'works with no spaces' do
    word_wrap = Wrapper.new
    wrapped_string = word_wrap.wrap('hellothere', 5)
    expect(wrapped_string).to eq "hello\nthere\n"
  end

  it 'works with hyphens' do
    word_wrap = Wrapper.new
    wrapped_string = word_wrap.wrap('hello-there', 5)
    expect(wrapped_string).to eq "hello\nthere\n"
  end

  it 'fails with stars' do
    word_wrap = Wrapper.new
    wrapped_string = word_wrap.wrap('hello*there', 5)
    expect(wrapped_string).not_to eq "hello\nthere\n"
  end
end
