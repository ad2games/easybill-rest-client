=begin
easybill REST API

Authenticate with HTTP Basic Auth.\n* Username: `easybill email`\n  \n* Password: `SOAP API key`

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'date'

module Easybill
  class Document
    attr_accessor :address

    attr_accessor :label_address

    attr_accessor :amount

    attr_accessor :amount_net

    attr_accessor :bank_debit_form

    attr_accessor :cash_allowance

    attr_accessor :cash_allowance_days

    attr_accessor :cash_allowance_text

    attr_accessor :contact_id

    attr_accessor :contact_label

    attr_accessor :contact_text

    attr_accessor :created_at

    attr_accessor :currency

    attr_accessor :customer_id

    attr_accessor :discount

    attr_accessor :discount_type

    attr_accessor :document_date

    attr_accessor :due_date

    attr_accessor :edited_at

    attr_accessor :grace_period

    attr_accessor :id

    attr_accessor :is_archive

    attr_accessor :is_draft

    attr_accessor :items

    attr_accessor :number

    attr_accessor :paid_amount

    attr_accessor :paid_at

    attr_accessor :pdf_pages

    attr_accessor :pdf_template

    attr_accessor :project_id

    # This object is only available in document type RECURRING
    attr_accessor :recurring_options

    # Reference document id
    attr_accessor :ref_id

    # This object is only available in document type INVOICE or CREDIT
    attr_accessor :service_date

    attr_accessor :status

    attr_accessor :text

    attr_accessor :text_prefix

    attr_accessor :title

    attr_accessor :type

    attr_accessor :vat_option

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'address' => :'address',
        
        :'label_address' => :'label_address',
        
        :'amount' => :'amount',
        
        :'amount_net' => :'amount_net',
        
        :'bank_debit_form' => :'bank_debit_form',
        
        :'cash_allowance' => :'cash_allowance',
        
        :'cash_allowance_days' => :'cash_allowance_days',
        
        :'cash_allowance_text' => :'cash_allowance_text',
        
        :'contact_id' => :'contact_id',
        
        :'contact_label' => :'contact_label',
        
        :'contact_text' => :'contact_text',
        
        :'created_at' => :'created_at',
        
        :'currency' => :'currency',
        
        :'customer_id' => :'customer_id',
        
        :'discount' => :'discount',
        
        :'discount_type' => :'discount_type',
        
        :'document_date' => :'document_date',
        
        :'due_date' => :'due_date',
        
        :'edited_at' => :'edited_at',
        
        :'grace_period' => :'grace_period',
        
        :'id' => :'id',
        
        :'is_archive' => :'is_archive',
        
        :'is_draft' => :'is_draft',
        
        :'items' => :'items',
        
        :'number' => :'number',
        
        :'paid_amount' => :'paid_amount',
        
        :'paid_at' => :'paid_at',
        
        :'pdf_pages' => :'pdf_pages',
        
        :'pdf_template' => :'pdf_template',
        
        :'project_id' => :'project_id',
        
        :'recurring_options' => :'recurring_options',
        
        :'ref_id' => :'ref_id',
        
        :'service_date' => :'service_date',
        
        :'status' => :'status',
        
        :'text' => :'text',
        
        :'text_prefix' => :'text_prefix',
        
        :'title' => :'title',
        
        :'type' => :'type',
        
        :'vat_option' => :'vat_option'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address' => :'DocumentAddress',
        :'label_address' => :'DocumentAddress',
        :'amount' => :'String',
        :'amount_net' => :'String',
        :'bank_debit_form' => :'String',
        :'cash_allowance' => :'String',
        :'cash_allowance_days' => :'String',
        :'cash_allowance_text' => :'String',
        :'contact_id' => :'Integer',
        :'contact_label' => :'String',
        :'contact_text' => :'String',
        :'created_at' => :'DateTime',
        :'currency' => :'String',
        :'customer_id' => :'Integer',
        :'discount' => :'String',
        :'discount_type' => :'String',
        :'document_date' => :'Date',
        :'due_date' => :'Date',
        :'edited_at' => :'String',
        :'grace_period' => :'String',
        :'id' => :'Integer',
        :'is_archive' => :'BOOLEAN',
        :'is_draft' => :'BOOLEAN',
        :'items' => :'Array<DocumentPosition>',
        :'number' => :'String',
        :'paid_amount' => :'String',
        :'paid_at' => :'Date',
        :'pdf_pages' => :'Integer',
        :'pdf_template' => :'String',
        :'project_id' => :'String',
        :'recurring_options' => :'DocumentRecurring',
        :'ref_id' => :'Integer',
        :'service_date' => :'ServiceDate',
        :'status' => :'String',
        :'text' => :'String',
        :'text_prefix' => :'String',
        :'title' => :'String',
        :'type' => :'String',
        :'vat_option' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'address']
        self.address = attributes[:'address']
      end
      
      if attributes[:'label_address']
        self.label_address = attributes[:'label_address']
      end
      
      if attributes[:'amount']
        self.amount = attributes[:'amount']
      end
      
      if attributes[:'amount_net']
        self.amount_net = attributes[:'amount_net']
      end
      
      if attributes[:'bank_debit_form']
        self.bank_debit_form = attributes[:'bank_debit_form']
      end
      
      if attributes[:'cash_allowance']
        self.cash_allowance = attributes[:'cash_allowance']
      end
      
      if attributes[:'cash_allowance_days']
        self.cash_allowance_days = attributes[:'cash_allowance_days']
      end
      
      if attributes[:'cash_allowance_text']
        self.cash_allowance_text = attributes[:'cash_allowance_text']
      end
      
      if attributes[:'contact_id']
        self.contact_id = attributes[:'contact_id']
      end
      
      if attributes[:'contact_label']
        self.contact_label = attributes[:'contact_label']
      end
      
      if attributes[:'contact_text']
        self.contact_text = attributes[:'contact_text']
      end
      
      if attributes[:'created_at']
        self.created_at = attributes[:'created_at']
      end
      
      if attributes[:'currency']
        self.currency = attributes[:'currency']
      end
      
      if attributes[:'customer_id']
        self.customer_id = attributes[:'customer_id']
      end
      
      if attributes[:'discount']
        self.discount = attributes[:'discount']
      end
      
      if attributes[:'discount_type']
        self.discount_type = attributes[:'discount_type']
      end
      
      if attributes[:'document_date']
        self.document_date = attributes[:'document_date']
      end
      
      if attributes[:'due_date']
        self.due_date = attributes[:'due_date']
      end
      
      if attributes[:'edited_at']
        self.edited_at = attributes[:'edited_at']
      end
      
      if attributes[:'grace_period']
        self.grace_period = attributes[:'grace_period']
      end
      
      if attributes[:'id']
        self.id = attributes[:'id']
      end
      
      if attributes[:'is_archive']
        self.is_archive = attributes[:'is_archive']
      end
      
      if attributes[:'is_draft']
        self.is_draft = attributes[:'is_draft']
      end
      
      if attributes[:'items']
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end
      
      if attributes[:'number']
        self.number = attributes[:'number']
      end
      
      if attributes[:'paid_amount']
        self.paid_amount = attributes[:'paid_amount']
      end
      
      if attributes[:'paid_at']
        self.paid_at = attributes[:'paid_at']
      end
      
      if attributes[:'pdf_pages']
        self.pdf_pages = attributes[:'pdf_pages']
      end
      
      if attributes[:'pdf_template']
        self.pdf_template = attributes[:'pdf_template']
      end
      
      if attributes[:'project_id']
        self.project_id = attributes[:'project_id']
      end
      
      if attributes[:'recurring_options']
        self.recurring_options = attributes[:'recurring_options']
      end
      
      if attributes[:'ref_id']
        self.ref_id = attributes[:'ref_id']
      end
      
      if attributes[:'service_date']
        self.service_date = attributes[:'service_date']
      end
      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'text']
        self.text = attributes[:'text']
      end
      
      if attributes[:'text_prefix']
        self.text_prefix = attributes[:'text_prefix']
      end
      
      if attributes[:'title']
        self.title = attributes[:'title']
      end
      
      if attributes[:'type']
        self.type = attributes[:'type']
      end
      
      if attributes[:'vat_option']
        self.vat_option = attributes[:'vat_option']
      end
      
    end

    # Custom attribute writer method checking allowed values (enum).
    def type=(type)
      allowed_values = ["INVOICE", "RECURRING", "CREDIT", "OFFER", "REMINDER", "DUNNING", "STORNO", "DELIVERY", "CHARGE", "CHARGE_CONFIRM", "LETTER", "ORDER"]
      if type && !allowed_values.include?(type)
        fail "invalid value for 'type', must be one of #{allowed_values}"
      end
      @type = type
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address == o.address &&
          label_address == o.label_address &&
          amount == o.amount &&
          amount_net == o.amount_net &&
          bank_debit_form == o.bank_debit_form &&
          cash_allowance == o.cash_allowance &&
          cash_allowance_days == o.cash_allowance_days &&
          cash_allowance_text == o.cash_allowance_text &&
          contact_id == o.contact_id &&
          contact_label == o.contact_label &&
          contact_text == o.contact_text &&
          created_at == o.created_at &&
          currency == o.currency &&
          customer_id == o.customer_id &&
          discount == o.discount &&
          discount_type == o.discount_type &&
          document_date == o.document_date &&
          due_date == o.due_date &&
          edited_at == o.edited_at &&
          grace_period == o.grace_period &&
          id == o.id &&
          is_archive == o.is_archive &&
          is_draft == o.is_draft &&
          items == o.items &&
          number == o.number &&
          paid_amount == o.paid_amount &&
          paid_at == o.paid_at &&
          pdf_pages == o.pdf_pages &&
          pdf_template == o.pdf_template &&
          project_id == o.project_id &&
          recurring_options == o.recurring_options &&
          ref_id == o.ref_id &&
          service_date == o.service_date &&
          status == o.status &&
          text == o.text &&
          text_prefix == o.text_prefix &&
          title == o.title &&
          type == o.type &&
          vat_option == o.vat_option
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [address, label_address, amount, amount_net, bank_debit_form, cash_allowance, cash_allowance_days, cash_allowance_text, contact_id, contact_label, contact_text, created_at, currency, customer_id, discount, discount_type, document_date, due_date, edited_at, grace_period, id, is_archive, is_draft, items, number, paid_amount, paid_at, pdf_pages, pdf_template, project_id, recurring_options, ref_id, service_date, status, text, text_prefix, title, type, vat_option].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

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
        if value =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = Easybill.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
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
