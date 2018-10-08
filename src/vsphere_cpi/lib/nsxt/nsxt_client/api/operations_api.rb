=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module NSXT
  class OperationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a new IPFIX collector configuration
    # Create a new IPFIX collector configuration
    # @param ipfix_collector_config 
    # @param [Hash] opts the optional parameters
    # @return [IpfixCollectorConfig]
    def create_ipfix_collector_config(ipfix_collector_config, opts = {})
      data, _status_code, _headers = create_ipfix_collector_config_with_http_info(ipfix_collector_config, opts)
      return data
    end

    # Create a new IPFIX collector configuration
    # Create a new IPFIX collector configuration
    # @param ipfix_collector_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixCollectorConfig, Fixnum, Hash)>] IpfixCollectorConfig data, response status code and response headers
    def create_ipfix_collector_config_with_http_info(ipfix_collector_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OperationsApi.create_ipfix_collector_config ..."
      end
      # verify the required parameter 'ipfix_collector_config' is set
      if @api_client.config.client_side_validation && ipfix_collector_config.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_collector_config' when calling OperationsApi.create_ipfix_collector_config"
      end
      # resource path
      local_var_path = "/ipfix/collectorconfigs"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ipfix_collector_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixCollectorConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#create_ipfix_collector_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new IPFIX configuration
    # Create a new IPFIX configuration
    # @param ipfix_config 
    # @param [Hash] opts the optional parameters
    # @return [IpfixConfig]
    def create_ipfix_config(ipfix_config, opts = {})
      data, _status_code, _headers = create_ipfix_config_with_http_info(ipfix_config, opts)
      return data
    end

    # Create a new IPFIX configuration
    # Create a new IPFIX configuration
    # @param ipfix_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixConfig, Fixnum, Hash)>] IpfixConfig data, response status code and response headers
    def create_ipfix_config_with_http_info(ipfix_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OperationsApi.create_ipfix_config ..."
      end
      # verify the required parameter 'ipfix_config' is set
      if @api_client.config.client_side_validation && ipfix_config.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_config' when calling OperationsApi.create_ipfix_config"
      end
      # resource path
      local_var_path = "/ipfix/configs"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ipfix_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#create_ipfix_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing IPFIX collector configuration
    # Delete an existing IPFIX collector configuration
    # @param collector_config_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_ipfix_collector_config(collector_config_id, opts = {})
      delete_ipfix_collector_config_with_http_info(collector_config_id, opts)
      return nil
    end

    # Delete an existing IPFIX collector configuration
    # Delete an existing IPFIX collector configuration
    # @param collector_config_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_ipfix_collector_config_with_http_info(collector_config_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OperationsApi.delete_ipfix_collector_config ..."
      end
      # verify the required parameter 'collector_config_id' is set
      if @api_client.config.client_side_validation && collector_config_id.nil?
        fail ArgumentError, "Missing the required parameter 'collector_config_id' when calling OperationsApi.delete_ipfix_collector_config"
      end
      # resource path
      local_var_path = "/ipfix/collectorconfigs/{collector-config-id}".sub('{' + 'collector-config-id' + '}', collector_config_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#delete_ipfix_collector_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing IPFIX configuration
    # Delete an existing IPFIX configuration
    # @param config_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_ipfix_config(config_id, opts = {})
      delete_ipfix_config_with_http_info(config_id, opts)
      return nil
    end

    # Delete an existing IPFIX configuration
    # Delete an existing IPFIX configuration
    # @param config_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_ipfix_config_with_http_info(config_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OperationsApi.delete_ipfix_config ..."
      end
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling OperationsApi.delete_ipfix_config"
      end
      # resource path
      local_var_path = "/ipfix/configs/{config-id}".sub('{' + 'config-id' + '}', config_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#delete_ipfix_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an existing IPFIX collector configuration
    # Get an existing IPFIX collector configuration
    # @param collector_config_id 
    # @param [Hash] opts the optional parameters
    # @return [IpfixCollectorConfig]
    def get_ipfix_collector_config(collector_config_id, opts = {})
      data, _status_code, _headers = get_ipfix_collector_config_with_http_info(collector_config_id, opts)
      return data
    end

    # Get an existing IPFIX collector configuration
    # Get an existing IPFIX collector configuration
    # @param collector_config_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixCollectorConfig, Fixnum, Hash)>] IpfixCollectorConfig data, response status code and response headers
    def get_ipfix_collector_config_with_http_info(collector_config_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OperationsApi.get_ipfix_collector_config ..."
      end
      # verify the required parameter 'collector_config_id' is set
      if @api_client.config.client_side_validation && collector_config_id.nil?
        fail ArgumentError, "Missing the required parameter 'collector_config_id' when calling OperationsApi.get_ipfix_collector_config"
      end
      # resource path
      local_var_path = "/ipfix/collectorconfigs/{collector-config-id}".sub('{' + 'collector-config-id' + '}', collector_config_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixCollectorConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#get_ipfix_collector_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an existing IPFIX configuration
    # Get an existing IPFIX configuration
    # @param config_id 
    # @param [Hash] opts the optional parameters
    # @return [IpfixConfig]
    def get_ipfix_config(config_id, opts = {})
      data, _status_code, _headers = get_ipfix_config_with_http_info(config_id, opts)
      return data
    end

    # Get an existing IPFIX configuration
    # Get an existing IPFIX configuration
    # @param config_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixConfig, Fixnum, Hash)>] IpfixConfig data, response status code and response headers
    def get_ipfix_config_with_http_info(config_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OperationsApi.get_ipfix_config ..."
      end
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling OperationsApi.get_ipfix_config"
      end
      # resource path
      local_var_path = "/ipfix/configs/{config-id}".sub('{' + 'config-id' + '}', config_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#get_ipfix_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List IPFIX collector configurations
    # List IPFIX collector configurations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [IpfixCollectorConfigListResult]
    def list_ipfix_collector_config(opts = {})
      data, _status_code, _headers = list_ipfix_collector_config_with_http_info(opts)
      return data
    end

    # List IPFIX collector configurations
    # List IPFIX collector configurations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(IpfixCollectorConfigListResult, Fixnum, Hash)>] IpfixCollectorConfigListResult data, response status code and response headers
    def list_ipfix_collector_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OperationsApi.list_ipfix_collector_config ..."
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling OperationsApi.list_ipfix_collector_config, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling OperationsApi.list_ipfix_collector_config, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = "/ipfix/collectorconfigs"

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixCollectorConfigListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#list_ipfix_collector_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List IPFIX configuration
    # List IPFIX configuration
    # @param [Hash] opts the optional parameters
    # @option opts [String] :applied_to Applied To
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :ipfix_config_type Supported IPFIX Config Types.
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [IpfixConfigListResult]
    def list_ipfix_config(opts = {})
      data, _status_code, _headers = list_ipfix_config_with_http_info(opts)
      return data
    end

    # List IPFIX configuration
    # List IPFIX configuration
    # @param [Hash] opts the optional parameters
    # @option opts [String] :applied_to Applied To
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [String] :ipfix_config_type Supported IPFIX Config Types.
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(IpfixConfigListResult, Fixnum, Hash)>] IpfixConfigListResult data, response status code and response headers
    def list_ipfix_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OperationsApi.list_ipfix_config ..."
      end
      if @api_client.config.client_side_validation && opts[:'ipfix_config_type'] && !['IpfixSwitchConfig', 'IpfixDfwConfig'].include?(opts[:'ipfix_config_type'])
        fail ArgumentError, 'invalid value for "ipfix_config_type", must be one of IpfixSwitchConfig, IpfixDfwConfig'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling OperationsApi.list_ipfix_config, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling OperationsApi.list_ipfix_config, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = "/ipfix/configs"

      # query parameters
      query_params = {}
      query_params[:'applied_to'] = opts[:'applied_to'] if !opts[:'applied_to'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'ipfix_config_type'] = opts[:'ipfix_config_type'] if !opts[:'ipfix_config_type'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixConfigListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#list_ipfix_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing IPFIX collector configuration
    # Update an existing IPFIX collector configuration
    # @param collector_config_id 
    # @param ipfix_collector_config 
    # @param [Hash] opts the optional parameters
    # @return [IpfixCollectorConfig]
    def update_ipfix_collector_config(collector_config_id, ipfix_collector_config, opts = {})
      data, _status_code, _headers = update_ipfix_collector_config_with_http_info(collector_config_id, ipfix_collector_config, opts)
      return data
    end

    # Update an existing IPFIX collector configuration
    # Update an existing IPFIX collector configuration
    # @param collector_config_id 
    # @param ipfix_collector_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixCollectorConfig, Fixnum, Hash)>] IpfixCollectorConfig data, response status code and response headers
    def update_ipfix_collector_config_with_http_info(collector_config_id, ipfix_collector_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OperationsApi.update_ipfix_collector_config ..."
      end
      # verify the required parameter 'collector_config_id' is set
      if @api_client.config.client_side_validation && collector_config_id.nil?
        fail ArgumentError, "Missing the required parameter 'collector_config_id' when calling OperationsApi.update_ipfix_collector_config"
      end
      # verify the required parameter 'ipfix_collector_config' is set
      if @api_client.config.client_side_validation && ipfix_collector_config.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_collector_config' when calling OperationsApi.update_ipfix_collector_config"
      end
      # resource path
      local_var_path = "/ipfix/collectorconfigs/{collector-config-id}".sub('{' + 'collector-config-id' + '}', collector_config_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ipfix_collector_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixCollectorConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#update_ipfix_collector_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an existing IPFIX configuration
    # Update an existing IPFIX configuration
    # @param config_id 
    # @param ipfix_config 
    # @param [Hash] opts the optional parameters
    # @return [IpfixConfig]
    def update_ipfix_config(config_id, ipfix_config, opts = {})
      data, _status_code, _headers = update_ipfix_config_with_http_info(config_id, ipfix_config, opts)
      return data
    end

    # Update an existing IPFIX configuration
    # Update an existing IPFIX configuration
    # @param config_id 
    # @param ipfix_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixConfig, Fixnum, Hash)>] IpfixConfig data, response status code and response headers
    def update_ipfix_config_with_http_info(config_id, ipfix_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OperationsApi.update_ipfix_config ..."
      end
      # verify the required parameter 'config_id' is set
      if @api_client.config.client_side_validation && config_id.nil?
        fail ArgumentError, "Missing the required parameter 'config_id' when calling OperationsApi.update_ipfix_config"
      end
      # verify the required parameter 'ipfix_config' is set
      if @api_client.config.client_side_validation && ipfix_config.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_config' when calling OperationsApi.update_ipfix_config"
      end
      # resource path
      local_var_path = "/ipfix/configs/{config-id}".sub('{' + 'config-id' + '}', config_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(ipfix_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OperationsApi#update_ipfix_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
