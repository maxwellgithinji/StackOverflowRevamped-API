require 'rails_helper'

RSpec.describe User, type: :model do
  #association tests
  it { should have_many(:questions) } 

  #validation tests
  #ensure name, email and password are present
  it  { should validate_presence_of(:name) }
  it  { should validate_presence_of(:email) }
  it  { should validate_presence_of(:password_digest) }
  
end
