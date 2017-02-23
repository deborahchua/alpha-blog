require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

  test "get new category form and create a new category" do
    get new_category_path
    assert_template 'categories/new'
    assert_template 'Category.count', 1 do
      post_via_redirect categories_patn
    end

    assert_template 'categories/index'
    assert_match "sports", response.body
  end

end
