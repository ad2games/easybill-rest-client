require "uri"

module Easybill
  class PostBoxApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Fetch post box list
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Filter post boxes by type. Multiple typs seperate with , like type=EMAIL,FAX.
    # @option opts [String] :status Filter post boxes by status.
    # @option opts [String] :document_id Filter post boxes by document_id. You can add multiple document ids separate by comma like id,id,id.
    # @return [PostBoxes]
    def post_boxes_get(opts = {})
      data, status_code, headers = post_boxes_get_with_http_info(opts)
      return data
    end

    # Fetch post box list
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Filter post boxes by type. Multiple typs seperate with , like type=EMAIL,FAX.
    # @option opts [String] :status Filter post boxes by status.
    # @option opts [String] :document_id Filter post boxes by document_id. You can add multiple document ids separate by comma like id,id,id.
    # @return [Array<(PostBoxes, Fixnum, Hash)>] PostBoxes data, response status code and response headers
    def post_boxes_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PostBoxApi#post_boxes_get ..."
      end
      
      if opts[:'type'] && !['EMAIL', 'FAX', 'POST'].include?(opts[:'type'])
        fail 'invalid value for "type", must be one of EMAIL, FAX, POST'
      end
      
      if opts[:'status'] && !['WAITING', 'PREPARE', 'ERROR', 'OK', 'PROCESSING'].include?(opts[:'status'])
        fail 'invalid value for "status", must be one of WAITING, PREPARE, ERROR, OK, PROCESSING'
      end
      
      # resource path
      path = "/post-boxes".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'type'] = opts[:'type'] if opts[:'type']
      query_params[:'status'] = opts[:'status'] if opts[:'status']
      query_params[:'document_id'] = opts[:'document_id'] if opts[:'document_id']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PostBoxes')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PostBoxApi#post_boxes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch post box
    # 
    # @param id ID of post box
    # @param [Hash] opts the optional parameters
    # @return [PostBox]
    def post_boxes_id_get(id, opts = {})
      data, status_code, headers = post_boxes_id_get_with_http_info(id, opts)
      return data
    end

    # Fetch post box
    # 
    # @param id ID of post box
    # @param [Hash] opts the optional parameters
    # @return [Array<(PostBox, Fixnum, Hash)>] PostBox data, response status code and response headers
    def post_boxes_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PostBoxApi#post_boxes_id_get ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling post_boxes_id_get" if id.nil?
      
      # resource path
      path = "/post-boxes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PostBox')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PostBoxApi#post_boxes_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete post box
    # 
    # @param id ID of post box
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_boxes_id_delete(id, opts = {})
      post_boxes_id_delete_with_http_info(id, opts)
      return nil
    end

    # Delete post box
    # 
    # @param id ID of post box
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def post_boxes_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PostBoxApi#post_boxes_id_delete ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling post_boxes_id_delete" if id.nil?
      
      # resource path
      path = "/post-boxes/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      

      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PostBoxApi#post_boxes_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end



