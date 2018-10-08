=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT
  # Load balancer rule actions are used to manipulate application traffic. Currently load balancer rules can be used at three load balancer processing phases. Each phase has its own supported type of actions. Supported actions in HTTP_REQUST_REWRITE phase are:   LbHttpRequestUriRewriteAction   LbHttpRequestHeaderRewriteAction   LbHttpRequestHeaderDeleteAction   LbVariableAssignmentAction Supported actions in HTTP_FORWARDING phase are:   LbHttpRejectAction   LbHttpRedirectAction   LbSelectPoolAction Supported action in HTTP_RESPONSE_REWRITE phase is:   LbHttpResponseHeaderRewriteAction   LbHttpResponseHeaderDeleteAction  If the match type of an LbRuleCondition field is specified as REGEX and named capturing groups are used in the specified regular expression. The groups can be used as variables in LbRuleAction fields. For example, define a rule with LbHttpRequestUriCondition as match condition and LbHttpRequestUriRewriteAction as action. Set match_type field of LbHttpRequestUriCondition to REGEX, and set uri field to   \"/news/(?&lt;year&gt;\\d+)/(?&lt;month&gt;\\d+)/(?&lt;article&gt;.*)\". Set uri field of LbHttpRequestUriRewriteAction to:   \"/news/$year-$month/$article\" In uri field of LbHttpRequestUriCondition, the (?&lt;year&gt;\\d+), (?&lt;month&gt;\\d+) and (?&lt;article&gt;.*) are named capturing groups, they define variables named $year, $month and $article respectively. The defined variables are used in LbHttpRequestUriRewriteAction. For a matched HTTP request with URI \"/news/2017/06/xyz.html\", the substring \"2017\" is captured in variable $year, \"06\" is captured in variable $month, and \"xyz.html\" is captured in variable $article. The LbHttpRequestUriRewriteAction will rewrite the URI to:   \"/news/2017-06/xyz.html\" A set of built-in variables can be used in LbRuleAction as well. The name of built-in variables start with underscore, the name of user defined variables is not allowed to start with underscore. Following are some of the built-in variables:   $_scheme: Reference the scheme part of matched HTTP messages, could be \"http\" or \"https\".   $_host: Host of matched HTTP messages, for example \"www.example.com\".   $_server_port: Port part of URI, it is also the port of the server which accepted a request. Default port is 80 for http and 443 for https.   $_uri: The URI path, for example \"/products/sample.html\".   $_request_uri: Full original request URI with arguments, for example,     \"/products/sample.html?a=b&c=d\".   $_args: URI arguments, for instance \"a=b&c=d\"   $_is_args: \"?\" if a request has URI arguments, or an empty string otherwise. For the full list of built-in variables, please reference the NSX-T Administrator's Guide. 
  class LbRuleAction
    # Type of load balancer rule action
    attr_accessor :type

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
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["LbHttpRequestUriRewriteAction", "LbHttpRequestHeaderRewriteAction", "LbHttpRejectAction", "LbHttpRedirectAction", "LbSelectPoolAction", "LbSelectServerAction", "LbHttpResponseHeaderRewriteAction", "LbHttpRequestHeaderDeleteAction", "LbHttpResponseHeaderDeleteAction", "LbVariableAssignmentAction"])
      return false unless type_validator.valid?(@type)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["LbHttpRequestUriRewriteAction", "LbHttpRequestHeaderRewriteAction", "LbHttpRejectAction", "LbHttpRedirectAction", "LbSelectPoolAction", "LbSelectServerAction", "LbHttpResponseHeaderRewriteAction", "LbHttpRequestHeaderDeleteAction", "LbHttpResponseHeaderDeleteAction", "LbVariableAssignmentAction"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type].hash
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
