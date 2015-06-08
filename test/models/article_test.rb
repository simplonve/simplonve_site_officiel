require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "article invalid without day" do
    assert FactoryGirl.build(:article, day: nil).invalid?
  end
  
  test "article invalid without year" do
    assert FactoryGirl.build(:article, year: nil).invalid?
  end
  
  test "article invalid without month" do
    assert FactoryGirl.build(:article, month: nil).invalid?
  end
  
  test "article invalid without content" do
    assert FactoryGirl.build(:article, content: nil).invalid?
  end

  test "article invalid if shorter than 12 chars" do
    assert FactoryGirl.build(:article, title: "foo").invalid?
  end
end
