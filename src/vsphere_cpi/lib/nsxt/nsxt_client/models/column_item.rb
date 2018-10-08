=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT
  # Represents a column of the Grid
  class ColumnItem
    # Sorting on column is based on the sort_key. sort_key represents the field in the output data on which sort is requested.
    attr_accessor :sort_key

    # Data type of the field.
    attr_accessor :type

    # Multi-line text to be shown on tooltip while hovering over a cell in the grid.
    attr_accessor :tooltip

    # Label of the column.
    attr_accessor :label

    # Field from which values of the column will be derived.
    attr_accessor :field

    # If true, the value of the column are sorted in ascending order. Otherwise, in descending order.
    attr_accessor :sort_ascending

    # Id of drilldown widget, if any. Id should be a valid id of an existing widget.
    attr_accessor :drilldown_id

    # If set to true, hides the column
    attr_accessor :hidden

    # Hyperlink of the specified UI page that provides details. If drilldown_id is provided, then navigation cannot be used.
    attr_accessor :navigation

    # Identifies the column and used for fetching content upon an user click or drilldown. If column identifier is not provided, the column's data will not participate in searches and drilldowns.
    attr_accessor :column_identifier

    # Render configuration to be applied, if any.
    attr_accessor :render_configuration

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
        :'sort_key' => :'sort_key',
        :'type' => :'type',
        :'tooltip' => :'tooltip',
        :'label' => :'label',
        :'field' => :'field',
        :'sort_ascending' => :'sort_ascending',
        :'drilldown_id' => :'drilldown_id',
        :'hidden' => :'hidden',
        :'navigation' => :'navigation',
        :'column_identifier' => :'column_identifier',
        :'render_configuration' => :'render_configuration'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'sort_key' => :'String',
        :'type' => :'String',
        :'tooltip' => :'Array<Tooltip>',
        :'label' => :'Label',
        :'field' => :'String',
        :'sort_ascending' => :'BOOLEAN',
        :'drilldown_id' => :'String',
        :'hidden' => :'BOOLEAN',
        :'navigation' => :'String',
        :'column_identifier' => :'String',
        :'render_configuration' => :'Array<RenderConfiguration>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'sort_key')
        self.sort_key = attributes[:'sort_key']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = "String"
      end

      if attributes.has_key?(:'tooltip')
        if (value = attributes[:'tooltip']).is_a?(Array)
          self.tooltip = value
        end
      end

      if attributes.has_key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.has_key?(:'field')
        self.field = attributes[:'field']
      end

      if attributes.has_key?(:'sort_ascending')
        self.sort_ascending = attributes[:'sort_ascending']
      else
        self.sort_ascending = true
      end

      if attributes.has_key?(:'drilldown_id')
        self.drilldown_id = attributes[:'drilldown_id']
      end

      if attributes.has_key?(:'hidden')
        self.hidden = attributes[:'hidden']
      else
        self.hidden = false
      end

      if attributes.has_key?(:'navigation')
        self.navigation = attributes[:'navigation']
      end

      if attributes.has_key?(:'column_identifier')
        self.column_identifier = attributes[:'column_identifier']
      end

      if attributes.has_key?(:'render_configuration')
        if (value = attributes[:'render_configuration']).is_a?(Array)
          self.render_configuration = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@sort_key.nil? && @sort_key.to_s.length > 255
        invalid_properties.push("invalid value for 'sort_key', the character length must be smaller than or equal to 255.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @type.to_s.length > 255
        invalid_properties.push("invalid value for 'type', the character length must be smaller than or equal to 255.")
      end

      if @label.nil?
        invalid_properties.push("invalid value for 'label', label cannot be nil.")
      end

      if @field.nil?
        invalid_properties.push("invalid value for 'field', field cannot be nil.")
      end

      if @field.to_s.length > 1024
        invalid_properties.push("invalid value for 'field', the character length must be smaller than or equal to 1024.")
      end

      if !@drilldown_id.nil? && @drilldown_id.to_s.length > 255
        invalid_properties.push("invalid value for 'drilldown_id', the character length must be smaller than or equal to 255.")
      end

      if !@navigation.nil? && @navigation.to_s.length > 1024
        invalid_properties.push("invalid value for 'navigation', the character length must be smaller than or equal to 1024.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@sort_key.nil? && @sort_key.to_s.length > 255
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["String", "Number", "Date"])
      return false unless type_validator.valid?(@type)
      return false if @type.to_s.length > 255
      return false if @label.nil?
      return false if @field.nil?
      return false if @field.to_s.length > 1024
      return false if !@drilldown_id.nil? && @drilldown_id.to_s.length > 255
      return false if !@navigation.nil? && @navigation.to_s.length > 1024
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] sort_key Value to be assigned
    def sort_key=(sort_key)

      if !sort_key.nil? && sort_key.to_s.length > 255
        fail ArgumentError, "invalid value for 'sort_key', the character length must be smaller than or equal to 255."
      end

      @sort_key = sort_key
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["String", "Number", "Date"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] field Value to be assigned
    def field=(field)
      if field.nil?
        fail ArgumentError, "field cannot be nil"
      end

      if field.to_s.length > 1024
        fail ArgumentError, "invalid value for 'field', the character length must be smaller than or equal to 1024."
      end

      @field = field
    end

    # Custom attribute writer method with validation
    # @param [Object] drilldown_id Value to be assigned
    def drilldown_id=(drilldown_id)

      if !drilldown_id.nil? && drilldown_id.to_s.length > 255
        fail ArgumentError, "invalid value for 'drilldown_id', the character length must be smaller than or equal to 255."
      end

      @drilldown_id = drilldown_id
    end

    # Custom attribute writer method with validation
    # @param [Object] navigation Value to be assigned
    def navigation=(navigation)

      if !navigation.nil? && navigation.to_s.length > 1024
        fail ArgumentError, "invalid value for 'navigation', the character length must be smaller than or equal to 1024."
      end

      @navigation = navigation
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sort_key == o.sort_key &&
          type == o.type &&
          tooltip == o.tooltip &&
          label == o.label &&
          field == o.field &&
          sort_ascending == o.sort_ascending &&
          drilldown_id == o.drilldown_id &&
          hidden == o.hidden &&
          navigation == o.navigation &&
          column_identifier == o.column_identifier &&
          render_configuration == o.render_configuration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [sort_key, type, tooltip, label, field, sort_ascending, drilldown_id, hidden, navigation, column_identifier, render_configuration].hash
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
