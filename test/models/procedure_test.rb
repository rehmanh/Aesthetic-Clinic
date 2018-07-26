require 'test_helper'

describe Procedure do 
  
  setup do 
    @procedure = Procedure.new
    @procedure.name = "Test Procedure"
    @procedure.description = "Test description."
  end

  it "must have a name and description to be valid" do 
    invalid_procedure = Procedure.new
    refute invalid_procedure.valid?
  end

  it "is valid with a given name and description" do
    assert @procedure.valid?
  end

end
