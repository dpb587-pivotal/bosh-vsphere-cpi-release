=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT
  # Node network interface properties
  class NodeInterfaceProperties
    # Source of status data
    attr_accessor :source

    # Interface administration status
    attr_accessor :admin_status

    # Interface administration status
    attr_accessor :link_status

    # IP Alias
    attr_accessor :interface_alias

    # Indicates whether interface is enabled for Enhanced Networking Stack
    attr_accessor :ens_enabled

    # Interface Type
    attr_accessor :interface_type

    # Interface ID
    attr_accessor :interface_id

    # Connected switch
    attr_accessor :connected_switch

    # Interface capability for Enhanced Networking Stack
    attr_accessor :ens_capable

    # Interface MTU
    attr_accessor :mtu

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
        :'source' => :'source',
        :'admin_status' => :'admin_status',
        :'link_status' => :'link_status',
        :'interface_alias' => :'interface_alias',
        :'ens_enabled' => :'ens_enabled',
        :'interface_type' => :'interface_type',
        :'interface_id' => :'interface_id',
        :'connected_switch' => :'connected_switch',
        :'ens_capable' => :'ens_capable',
        :'mtu' => :'mtu'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'source' => :'String',
        :'admin_status' => :'String',
        :'link_status' => :'String',
        :'interface_alias' => :'Array<NodeInterfaceAlias>',
        :'ens_enabled' => :'BOOLEAN',
        :'interface_type' => :'String',
        :'interface_id' => :'String',
        :'connected_switch' => :'String',
        :'ens_capable' => :'BOOLEAN',
        :'mtu' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'admin_status')
        self.admin_status = attributes[:'admin_status']
      end

      if attributes.has_key?(:'link_status')
        self.link_status = attributes[:'link_status']
      end

      if attributes.has_key?(:'interface_alias')
        if (value = attributes[:'interface_alias']).is_a?(Array)
          self.interface_alias = value
        end
      end

      if attributes.has_key?(:'ens_enabled')
        self.ens_enabled = attributes[:'ens_enabled']
      end

      if attributes.has_key?(:'interface_type')
        self.interface_type = attributes[:'interface_type']
      end

      if attributes.has_key?(:'interface_id')
        self.interface_id = attributes[:'interface_id']
      end

      if attributes.has_key?(:'connected_switch')
        self.connected_switch = attributes[:'connected_switch']
      end

      if attributes.has_key?(:'ens_capable')
        self.ens_capable = attributes[:'ens_capable']
      end

      if attributes.has_key?(:'mtu')
        self.mtu = attributes[:'mtu']
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
      admin_status_validator = EnumAttributeValidator.new('String', ["UP", "DOWN"])
      return false unless admin_status_validator.valid?(@admin_status)
      link_status_validator = EnumAttributeValidator.new('String', ["UP", "DOWN"])
      return false unless link_status_validator.valid?(@link_status)
      interface_type_validator = EnumAttributeValidator.new('String', ["PHYSICAL", "VIRTUAL"])
      return false unless interface_type_validator.valid?(@interface_type)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] admin_status Object to be assigned
    def admin_status=(admin_status)
      validator = EnumAttributeValidator.new('String', ["UP", "DOWN"])
      unless validator.valid?(admin_status)
        fail ArgumentError, "invalid value for 'admin_status', must be one of #{validator.allowable_values}."
      end
      @admin_status = admin_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link_status Object to be assigned
    def link_status=(link_status)
      validator = EnumAttributeValidator.new('String', ["UP", "DOWN"])
      unless validator.valid?(link_status)
        fail ArgumentError, "invalid value for 'link_status', must be one of #{validator.allowable_values}."
      end
      @link_status = link_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interface_type Object to be assigned
    def interface_type=(interface_type)
      validator = EnumAttributeValidator.new('String', ["PHYSICAL", "VIRTUAL"])
      unless validator.valid?(interface_type)
        fail ArgumentError, "invalid value for 'interface_type', must be one of #{validator.allowable_values}."
      end
      @interface_type = interface_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          source == o.source &&
          admin_status == o.admin_status &&
          link_status == o.link_status &&
          interface_alias == o.interface_alias &&
          ens_enabled == o.ens_enabled &&
          interface_type == o.interface_type &&
          interface_id == o.interface_id &&
          connected_switch == o.connected_switch &&
          ens_capable == o.ens_capable &&
          mtu == o.mtu
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [source, admin_status, link_status, interface_alias, ens_enabled, interface_type, interface_id, connected_switch, ens_capable, mtu].hash
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
