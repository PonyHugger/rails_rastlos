# this is the first example for an integration test using plain minitest syntax

require "test_helper"

class TourCheckHeadline < ActionDispatch::IntegrationTest
  test "will the headline be displayed" do
    visit new_tour_path
    assert page.has_content?('New tour')
  end
end

