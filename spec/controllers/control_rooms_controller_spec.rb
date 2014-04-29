require 'spec_helper'

describe ControlRoomsController do

  describe "GET 'show'" do
    it 'renders the start page successfuly' do
      get 'show'
      expect(response).to be_success
    end
  end

end
