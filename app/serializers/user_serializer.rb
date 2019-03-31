class UserSerializer
  include FastJsonapi::ObjectSerializer

  attributes :first_name, :last_name, :date_of_birth, :occupation, :about, :school, :company,  :created_at, :updated_at

  has_many :objectives
end
