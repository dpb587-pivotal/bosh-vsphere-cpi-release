=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT
  # Node user properties
  class NodeUserProperties
    # Link to this resource
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    # Schema for this resource
    attr_accessor :_schema

    # User login name (must be \"root\" if userid is 0)
    attr_accessor :username

    # Password for the user (optionally specified on PUT, unspecified on GET)
    attr_accessor :password

    # Numeric id for the user
    attr_accessor :userid

    # Old password for the user (required on PUT if password specified)
    attr_accessor :old_password

    # Full name for the user
    attr_accessor :full_name


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_self' => :'_self',
        :'_links' => :'_links',
        :'_schema' => :'_schema',
        :'username' => :'username',
        :'password' => :'password',
        :'userid' => :'userid',
        :'old_password' => :'old_password',
        :'full_name' => :'full_name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'username' => :'String',
        :'password' => :'String',
        :'userid' => :'Integer',
        :'old_password' => :'String',
        :'full_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'_self')
        self._self = attributes[:'_self']
      end

      if attributes.has_key?(:'_links')
        if (value = attributes[:'_links']).is_a?(Array)
          self._links = value
        end
      end

      if attributes.has_key?(:'_schema')
        self._schema = attributes[:'_schema']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'userid')
        self.userid = attributes[:'userid']
      end

      if attributes.has_key?(:'old_password')
        self.old_password = attributes[:'old_password']
      end

      if attributes.has_key?(:'full_name')
        self.full_name = attributes[:'full_name']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@username.nil? && @username.to_s.length > 32
        invalid_properties.push("invalid value for 'username', the character length must be smaller than or equal to 32.")
      end

      if !@username.nil? && @username.to_s.length < 1
        invalid_properties.push("invalid value for 'username', the character length must be great than or equal to 1.")
      end

      if !@userid.nil? && @userid > 2147483647
        invalid_properties.push("invalid value for 'userid', must be smaller than or equal to 2147483647.")
      end

      if !@userid.nil? && @userid < 0
        invalid_properties.push("invalid value for 'userid', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@username.nil? && @username.to_s.length > 32
      return false if !@username.nil? && @username.to_s.length < 1
      return false if !@userid.nil? && @userid > 2147483647
      return false if !@userid.nil? && @userid < 0
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] username Value to be assigned
    def username=(username)

      if !username.nil? && username.to_s.length > 32
        fail ArgumentError, "invalid value for 'username', the character length must be smaller than or equal to 32."
      end

      if !username.nil? && username.to_s.length < 1
        fail ArgumentError, "invalid value for 'username', the character length must be great than or equal to 1."
      end

      @username = username
    end

    # Custom attribute writer method with validation
    # @param [Object] userid Value to be assigned
    def userid=(userid)

      if !userid.nil? && userid > 2147483647
        fail ArgumentError, "invalid value for 'userid', must be smaller than or equal to 2147483647."
      end

      if !userid.nil? && userid < 0
        fail ArgumentError, "invalid value for 'userid', must be greater than or equal to 0."
      end

      @userid = userid
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          username == o.username &&
          password == o.password &&
          userid == o.userid &&
          old_password == o.old_password &&
          full_name == o.full_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, username, password, userid, old_password, full_name].hash
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
