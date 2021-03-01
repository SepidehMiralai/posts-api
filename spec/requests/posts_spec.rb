require 'rails_helper'

RSpec.describe 'posts API', type: :request do
  # initialize test data
  let!(:posts) { create_list(:post, 3) }

  # Test suite for GET /post?tags=paramslist
  describe 'GET api/posts?tags=paramslist' do
    # make HTTP get request before each example
    context 'when tags parameter exists' do

      before {get '/api/posts?tags=tech'}
      it 'expects get request response be equal to post results that include tech in their tags field' do
        expected = posts.select do |post|
          (post.tags & ["tech"]).any?
        end
        expected = expected.to_json
        expect(response.body).to eq(expected)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when tags param does not exist' do
      before { get '/api/posts' }
      it 'returns a tag parameter is required error' do
        expect(response.body).to match(/The tag parameter is required/)
      end

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
    end

  end

  # Test suite for GET /posts/post?tags=paramslist&sortBy=param
   describe 'GET api/posts?tags=paramslist&sortBy=param' do

     before { get '/api/posts?tags=tech&sortBy=authorId' }

       it 'returns the posts sorted by authorId' do
        expected = posts.select do |post|
                    (post.tags & ["tech"]).any?
                    end
        expected = expected.sort_by{|posts| posts["authorId"].to_i}
        expected = expected.to_json
        expect(response.body).to eq(expected)

        #  expect(json).to eq(json.sort_by{|posts| posts["authorId"].to_i})
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

     end

  #Test suite for GET /posts/post?tags=paramslist&sortBy=param&direction=param
   describe 'GET api/posts?tags=paramslist&sortBy=param&direction=param' do

     before { get '/api/posts/?tags=tech&sortBy=authorId&direction=desc' }

      it 'returns the posts sorted by authorId in descending order' do
        expected = posts.select do |post|
          (post.tags & ["tech"]).any?
          end
        expected = expected.sort_by{|posts| posts["authorId"].to_i}.reverse
        expected = expected.to_json
        expect(response.body).to eq(expected)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
   end

end