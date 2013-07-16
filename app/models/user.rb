class User
  include Mongoid::Document

  field :current_step
  field :city
  field :country
  field :kind
  field :name
  field :desc

  index({current_step: 1 }, { unique: true, name: "ssn_index" })
  #index :current_step

  def validate_description
    self.validates_presence_of :name
    self.validates_presence_of :desc
  end

  def validate_address
    self.validates_presence_of :city
    self.validates_presence_of :country
    self.validates_presence_of :address
  end

  def validate_kind
    self.validates_presence_of :kind
  end
end
