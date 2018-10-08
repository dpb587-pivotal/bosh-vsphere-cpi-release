=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT

  class NodeUserSettings
    # To configure username, you must provide this property together with <b>cli_password</b>. 
    attr_accessor :cli_username

    # The default username is \"audit\". To configure username, you must provide this property together with <b>audit_password</b>. 
    attr_accessor :audit_username

    # Password for the node root user. For deployment, this property is required. After deployment, this property is ignored, and the node cli must be used to change the password. The password specified must be at least 8 characters in length and must contain at least one lowercase, one uppercase, one numeric character and one special character (except quotes). 
    attr_accessor :root_password

    # Password for the node cli user. For deployment, this property is required. After deployment, this property is ignored, and the node cli must be used to change the password. The password specified must be at least 8 characters in length and must contain at least one lowercase, one uppercase, one numeric character and one special character (except quotes). 
    attr_accessor :cli_password

    # Password for the node audit user. For deployment, this property is required. After deployment, this property is ignored, and the node cli must be used to change the password. The password specified must be at least 8 characters in length and must contain at least one lowercase, one uppercase, one numeric character and one special character (except quotes). 
    attr_accessor :audit_password


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cli_username' => :'cli_username',
        :'audit_username' => :'audit_username',
        :'root_password' => :'root_password',
        :'cli_password' => :'cli_password',
        :'audit_password' => :'audit_password'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'cli_username' => :'String',
        :'audit_username' => :'String',
        :'root_password' => :'String',
        :'cli_password' => :'String',
        :'audit_password' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'cli_username')
        self.cli_username = attributes[:'cli_username']
      else
        self.cli_username = "admin"
      end

      if attributes.has_key?(:'audit_username')
        self.audit_username = attributes[:'audit_username']
      end

      if attributes.has_key?(:'root_password')
        self.root_password = attributes[:'root_password']
      end

      if attributes.has_key?(:'cli_password')
        self.cli_password = attributes[:'cli_password']
      end

      if attributes.has_key?(:'audit_password')
        self.audit_password = attributes[:'audit_password']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cli_username == o.cli_username &&
          audit_username == o.audit_username &&
          root_password == o.root_password &&
          cli_password == o.cli_password &&
          audit_password == o.audit_password
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [cli_username, audit_username, root_password, cli_password, audit_password].hash
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
