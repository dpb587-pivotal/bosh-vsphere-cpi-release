=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT

  class MetadataProxyStatisticsPerLogicalSwitch
    # requests to nova server
    attr_accessor :requests_to_nova_server

    # responses to clients
    attr_accessor :responses_to_clients

    # succeeded responses from  nova server
    attr_accessor :succeeded_responses_from_nova_server

    # uuid of attached logical switch
    attr_accessor :logical_switch_id

    # requests from clients
    attr_accessor :requests_from_clients

    # error responses from  nova server
    attr_accessor :error_responses_from_nova_server


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'requests_to_nova_server' => :'requests_to_nova_server',
        :'responses_to_clients' => :'responses_to_clients',
        :'succeeded_responses_from_nova_server' => :'succeeded_responses_from_nova_server',
        :'logical_switch_id' => :'logical_switch_id',
        :'requests_from_clients' => :'requests_from_clients',
        :'error_responses_from_nova_server' => :'error_responses_from_nova_server'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'requests_to_nova_server' => :'Integer',
        :'responses_to_clients' => :'Integer',
        :'succeeded_responses_from_nova_server' => :'Integer',
        :'logical_switch_id' => :'String',
        :'requests_from_clients' => :'Integer',
        :'error_responses_from_nova_server' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'requests_to_nova_server')
        self.requests_to_nova_server = attributes[:'requests_to_nova_server']
      end

      if attributes.has_key?(:'responses_to_clients')
        self.responses_to_clients = attributes[:'responses_to_clients']
      end

      if attributes.has_key?(:'succeeded_responses_from_nova_server')
        self.succeeded_responses_from_nova_server = attributes[:'succeeded_responses_from_nova_server']
      end

      if attributes.has_key?(:'logical_switch_id')
        self.logical_switch_id = attributes[:'logical_switch_id']
      end

      if attributes.has_key?(:'requests_from_clients')
        self.requests_from_clients = attributes[:'requests_from_clients']
      end

      if attributes.has_key?(:'error_responses_from_nova_server')
        self.error_responses_from_nova_server = attributes[:'error_responses_from_nova_server']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @requests_to_nova_server.nil?
        invalid_properties.push("invalid value for 'requests_to_nova_server', requests_to_nova_server cannot be nil.")
      end

      if @responses_to_clients.nil?
        invalid_properties.push("invalid value for 'responses_to_clients', responses_to_clients cannot be nil.")
      end

      if @succeeded_responses_from_nova_server.nil?
        invalid_properties.push("invalid value for 'succeeded_responses_from_nova_server', succeeded_responses_from_nova_server cannot be nil.")
      end

      if @logical_switch_id.nil?
        invalid_properties.push("invalid value for 'logical_switch_id', logical_switch_id cannot be nil.")
      end

      if @requests_from_clients.nil?
        invalid_properties.push("invalid value for 'requests_from_clients', requests_from_clients cannot be nil.")
      end

      if @error_responses_from_nova_server.nil?
        invalid_properties.push("invalid value for 'error_responses_from_nova_server', error_responses_from_nova_server cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @requests_to_nova_server.nil?
      return false if @responses_to_clients.nil?
      return false if @succeeded_responses_from_nova_server.nil?
      return false if @logical_switch_id.nil?
      return false if @requests_from_clients.nil?
      return false if @error_responses_from_nova_server.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          requests_to_nova_server == o.requests_to_nova_server &&
          responses_to_clients == o.responses_to_clients &&
          succeeded_responses_from_nova_server == o.succeeded_responses_from_nova_server &&
          logical_switch_id == o.logical_switch_id &&
          requests_from_clients == o.requests_from_clients &&
          error_responses_from_nova_server == o.error_responses_from_nova_server
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [requests_to_nova_server, responses_to_clients, succeeded_responses_from_nova_server, logical_switch_id, requests_from_clients, error_responses_from_nova_server].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = NSXT.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
