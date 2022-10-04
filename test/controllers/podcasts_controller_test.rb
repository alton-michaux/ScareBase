# frozen_string_literal: true

require 'test_helper'

class PodcastsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get podcasts_index_url
    assert_response :success
  end
end
