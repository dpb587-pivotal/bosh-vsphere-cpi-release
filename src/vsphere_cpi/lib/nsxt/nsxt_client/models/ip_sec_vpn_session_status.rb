=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT
  # IKE session traffic summary provides IKE session status and aggregate of traffic across all tunnel.
  class IPSecVPNSessionStatus
    # UUID of vpn session.
    attr_accessor :ipsec_vpn_session_id

    # Display name of vpn session.
    attr_accessor :display_name

    # Number of failed tunnels.
    attr_accessor :failed_tunnels

    # Number of negotiated tunnels.
    attr_accessor :negotiated_tunnels

    # Gives session status consolidated using IKE status and tunnel status. It can be UP, DOWN, DEGRADED. If IKE and all tunnels are UP status will be UP, if all down it will be DOWN, otherwise it will be DEGRADED.
    attr_accessor :session_status

    # Timestamp when the data was last updated.
    attr_accessor :last_update_timestamp

    # Aggregate traffic statistics across all ipsec tunnels.
    attr_accessor :aggregate_traffic_counters

    # Status for IPSec VPN IKE session UP/DOWN and fail reason if IKE session is down.
    attr_accessor :ike_status

    # Total number of tunnels.
    attr_accessor :total_tunnels

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
        :'ipsec_vpn_session_id' => :'ipsec_vpn_session_id',
        :'display_name' => :'display_name',
        :'failed_tunnels' => :'failed_tunnels',
        :'negotiated_tunnels' => :'negotiated_tunnels',
        :'session_status' => :'session_status',
        :'last_update_timestamp' => :'last_update_timestamp',
        :'aggregate_traffic_counters' => :'aggregate_traffic_counters',
        :'ike_status' => :'ike_status',
        :'total_tunnels' => :'total_tunnels'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'ipsec_vpn_session_id' => :'String',
        :'display_name' => :'String',
        :'failed_tunnels' => :'Integer',
        :'negotiated_tunnels' => :'Integer',
        :'session_status' => :'String',
        :'last_update_timestamp' => :'Integer',
        :'aggregate_traffic_counters' => :'IPSecVPNTrafficCounters',
        :'ike_status' => :'IPSecVPNIKESessionStatus',
        :'total_tunnels' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ipsec_vpn_session_id')
        self.ipsec_vpn_session_id = attributes[:'ipsec_vpn_session_id']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'failed_tunnels')
        self.failed_tunnels = attributes[:'failed_tunnels']
      end

      if attributes.has_key?(:'negotiated_tunnels')
        self.negotiated_tunnels = attributes[:'negotiated_tunnels']
      end

      if attributes.has_key?(:'session_status')
        self.session_status = attributes[:'session_status']
      end

      if attributes.has_key?(:'last_update_timestamp')
        self.last_update_timestamp = attributes[:'last_update_timestamp']
      end

      if attributes.has_key?(:'aggregate_traffic_counters')
        self.aggregate_traffic_counters = attributes[:'aggregate_traffic_counters']
      end

      if attributes.has_key?(:'ike_status')
        self.ike_status = attributes[:'ike_status']
      end

      if attributes.has_key?(:'total_tunnels')
        self.total_tunnels = attributes[:'total_tunnels']
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
      session_status_validator = EnumAttributeValidator.new('String', ["UP", "DOWN", "DEGRADED"])
      return false unless session_status_validator.valid?(@session_status)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] session_status Object to be assigned
    def session_status=(session_status)
      validator = EnumAttributeValidator.new('String', ["UP", "DOWN", "DEGRADED"])
      unless validator.valid?(session_status)
        fail ArgumentError, "invalid value for 'session_status', must be one of #{validator.allowable_values}."
      end
      @session_status = session_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ipsec_vpn_session_id == o.ipsec_vpn_session_id &&
          display_name == o.display_name &&
          failed_tunnels == o.failed_tunnels &&
          negotiated_tunnels == o.negotiated_tunnels &&
          session_status == o.session_status &&
          last_update_timestamp == o.last_update_timestamp &&
          aggregate_traffic_counters == o.aggregate_traffic_counters &&
          ike_status == o.ike_status &&
          total_tunnels == o.total_tunnels
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [ipsec_vpn_session_id, display_name, failed_tunnels, negotiated_tunnels, session_status, last_update_timestamp, aggregate_traffic_counters, ike_status, total_tunnels].hash
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
