require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        commenter: "Commenter",
        body: "MyText",
        article: nil
      ),
      Comment.create!(
        commenter: "Commenter",
        body: "MyText",
        article: nil
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", text: "Commenter".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
