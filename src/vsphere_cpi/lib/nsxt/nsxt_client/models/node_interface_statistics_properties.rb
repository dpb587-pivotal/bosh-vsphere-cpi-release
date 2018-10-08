=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT
  # Node network interface statistic properties
  class NodeInterfaceStatisticsProperties
    # Link to this resource
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    # Schema for this resource
    attr_accessor :_schema

    # Number of packets dropped
    attr_accessor :tx_dropped

    # Number of packets received
    attr_accessor :rx_packets

    # Number of carrier losses detected
    attr_accessor :tx_carrier

    # Number of bytes received
    attr_accessor :rx_bytes

    # Number of transmit errors
    attr_accessor :tx_errors

    # Interface ID
    attr_accessor :interface_id

    # Number of collisions detected
    attr_accessor :tx_colls

    # Number of framing errors
    attr_accessor :rx_frame

    # Number of receive errors
    attr_accessor :rx_errors

    # Number of bytes transmitted
    attr_accessor :tx_bytes

    # Number of packets dropped
    attr_accessor :rx_dropped

    # Number of packets transmitted
    attr_accessor :tx_packets

    # Source of status data.
    attr_accessor :source

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_self' => :'_self',
        :'_links' => :'_links',
        :'_schema' => :'_schema',
        :'tx_dropped' => :'tx_dropped',
        :'rx_packets' => :'rx_packets',
        :'tx_carrier' => :'tx_carrier',
        :'rx_bytes' => :'rx_bytes',
        :'tx_errors' => :'tx_errors',
        :'interface_id' => :'interface_id',
        :'tx_colls' => :'tx_colls',
        :'rx_frame' => :'rx_frame',
        :'rx_errors' => :'rx_errors',
        :'tx_bytes' => :'tx_bytes',
        :'rx_dropped' => :'rx_dropped',
        :'tx_packets' => :'tx_packets',
        :'source' => :'source'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'tx_dropped' => :'Integer',
        :'rx_packets' => :'Integer',
        :'tx_carrier' => :'Integer',
        :'rx_bytes' => :'Integer',
        :'tx_errors' => :'Integer',
        :'interface_id' => :'String',
        :'tx_colls' => :'Integer',
        :'rx_frame' => :'Integer',
        :'rx_errors' => :'Integer',
        :'tx_bytes' => :'Integer',
        :'rx_dropped' => :'Integer',
        :'tx_packets' => :'Integer',
        :'source' => :'String'
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

      if attributes.has_key?(:'tx_dropped')
        self.tx_dropped = attributes[:'tx_dropped']
      end

      if attributes.has_key?(:'rx_packets')
        self.rx_packets = attributes[:'rx_packets']
      end

      if attributes.has_key?(:'tx_carrier')
        self.tx_carrier = attributes[:'tx_carrier']
      end

      if attributes.has_key?(:'rx_bytes')
        self.rx_bytes = attributes[:'rx_bytes']
      end

      if attributes.has_key?(:'tx_errors')
        self.tx_errors = attributes[:'tx_errors']
      end

      if attributes.has_key?(:'interface_id')
        self.interface_id = attributes[:'interface_id']
      end

      if attributes.has_key?(:'tx_colls')
        self.tx_colls = attributes[:'tx_colls']
      end

      if attributes.has_key?(:'rx_frame')
        self.rx_frame = attributes[:'rx_frame']
      end

      if attributes.has_key?(:'rx_errors')
        self.rx_errors = attributes[:'rx_errors']
      end

      if attributes.has_key?(:'tx_bytes')
        self.tx_bytes = attributes[:'tx_bytes']
      end

      if attributes.has_key?(:'rx_dropped')
        self.rx_dropped = attributes[:'rx_dropped']
      end

      if attributes.has_key?(:'tx_packets')
        self.tx_packets = attributes[:'tx_packets']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
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
      source_validator = EnumAttributeValidator.new('String', ["realtime", "cached"])
      return false unless source_validator.valid?(@source)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source)
      validator = EnumAttributeValidator.new('String', ["realtime", "cached"])
      unless validator.valid?(source)
        fail ArgumentError, "invalid value for 'source', must be one of #{validator.allowable_values}."
      end
      @source = source
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          tx_dropped == o.tx_dropped &&
          rx_packets == o.rx_packets &&
          tx_carrier == o.tx_carrier &&
          rx_bytes == o.rx_bytes &&
          tx_errors == o.tx_errors &&
          interface_id == o.interface_id &&
          tx_colls == o.tx_colls &&
          rx_frame == o.rx_frame &&
          rx_errors == o.rx_errors &&
          tx_bytes == o.tx_bytes &&
          rx_dropped == o.rx_dropped &&
          tx_packets == o.tx_packets &&
          source == o.source
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, tx_dropped, rx_packets, tx_carrier, rx_bytes, tx_errors, interface_id, tx_colls, rx_frame, rx_errors, tx_bytes, rx_dropped, tx_packets, source].hash
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
