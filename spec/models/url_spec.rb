require 'rails_helper'

RSpec.describe Url, :type => :model do
  it "is valid with a url" do
    url = Url.new
    url.original = "http://www.google.com/"
    url.save
    expect(url).to be_valid
  end

  it "is invalid without original" do
    url = Url.new
    url.save
    expect(url).to be_invalid
  end

  it "is having 6 characters in random string" do
    url = Url.new
    str = url.instance_eval{ random_string }
    expect(str.length).to eq 6
  end

  it "is should have converted url" do
    url = Url.new
    url.original = "http://www.google.com/"
    url.save
    expect(url.converted).not_to be_nil
  end
end
