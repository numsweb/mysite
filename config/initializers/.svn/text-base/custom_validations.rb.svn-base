module CustomValidations
  # Validate a SSN
  def validates_ssn(*attr_names)
    attr_names.each do |attr_name|
      validates_format_of attr_name,
        :with => /^[\d]{3}-[\d]{2}-[\d]{4}$/,
        :message => "must be of format ###-##-####"
    end
  end
  
  # Makes sure an email address at least looks like an email address
  def validates_email_address(*attr_names)
    attr_names.each do |attr_name|
      validates_format_of attr_name,
        :with => /^[^@]{1,64}@[^\.]{1,255}\.[^\.]{1,255}$/,
        :message => "must be a valid email address"
    end
  end
end
ActiveRecord::Base.extend(CustomValidations)