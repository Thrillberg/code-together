require "application_system_test_case"

class VisitingProfileTest < ApplicationSystemTestCase
  test "visitor sees the user's information" do
    user = User.create(
      name: "monalisa octocat",
      bio: "A fun octocat who likes to code.",
      avatar_url: "http://www.example.com/octocat.gif",
    )

    visit user_path(user)

    assert_text "monalisa octocat"
    assert_text "A fun octocat who likes to code."
    assert_css "img[src='http://www.example.com/octocat.gif']"
  end
end
