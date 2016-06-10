module EasybillRestClient
  class PostBoxApi
    def initialize(api_client)
      @api_client = api_client
    end

    def find_all(params = {})
      api_client.request_collection(:get, '/post-boxes', params).map { |p| build_post_box(p) }
    end

    private

    attr_reader :api_client

    def build_post_box(params)
      PostBox.new(params)
    end
  end
end
