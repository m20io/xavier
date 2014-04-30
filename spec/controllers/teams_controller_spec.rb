require 'spec_helper'

describe TeamsController do
  describe "POST 'create,'" do
    it 'creates a team' do
      expect{ post :create, team: {name: "Alpha Team"}
      }.to change{Team.count}.by(1)
    end
  end
end
