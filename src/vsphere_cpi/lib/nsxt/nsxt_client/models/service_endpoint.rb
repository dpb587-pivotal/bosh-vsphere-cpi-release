=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT

  class ServiceEndpoint
    attr_accessor :certificate_sha256_thumbprint

    # IPv4 or IPv6 address
    attr_accessor :ip_address

    attr_accessor :fqdn

    attr_accessor :certificate

    attr_accessor :port


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'certificate_sha256_thumbprint' => :'certificate_sha256_thumbprint',
        :'ip_address' => :'ip_address',
        :'fqdn' => :'fqdn',
        :'certificate' => :'certificate',
        :'port' => :'port'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'certificate_sha256_thumbprint' => :'String',
        :'ip_address' => :'String',
        :'fqdn' => :'String',
        :'certificate' => :'String',
        :'port' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'certificate_sha256_thumbprint')
        self.certificate_sha256_thumbprint = attributes[:'certificate_sha256_thumbprint']
      end

      if attributes.has_key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.has_key?(:'fqdn')
        self.fqdn = attributes[:'fqdn']
      end

      if attributes.has_key?(:'certificate')
        self.certificate = attributes[:'certificate']
      end

      if attributes.has_key?(:'port')
        self.port = attributes[:'port']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @ip_address.nil?
        invalid_properties.push("invalid value for 'ip_address', ip_address cannot be nil.")
      end

      if @port.nil?
        invalid_properties.push("invalid value for 'port', port cannot be nil.")
      end

      if @port > 65535
        invalid_properties.push("invalid value for 'port', must be smaller than or equal to 65535.")
      end

      if @port < 0
        invalid_properties.push("invalid value for 'port', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @ip_address.nil?
      return false if @port.nil?
      return false if @port > 65535
      return false if @port < 0
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] port Value to be assigned
    def port=(port)
      if port.nil?
        fail ArgumentError, "port cannot be nil"
      end

      if port > 65535
        fail ArgumentError, "invalid value for 'port', must be smaller than or equal to 65535."
      end

      if port < 0
        fail ArgumentError, "invalid value for 'port', must be greater than or equal to 0."
      end

      @port = port
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          certificate_sha256_thumbprint == o.certificate_sha256_thumbprint &&
          ip_address == o.ip_address &&
          fqdn == o.fqdn &&
          certificate == o.certificate &&
          port == o.port
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [certificate_sha256_thumbprint, ip_address, fqdn, certificate, port].hash
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
