require 'spec_helper'

describe MutantsController do
  let(:storm) { Mutant.create(mutant_name: 'Storm', special_abilities: 'Make wind') }
  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      expect(assigns(:mutant)).to be_kind_of Mutant
    end
  end

  describe "POST 'create'" do
    context 'when the attributes create a valid mutant' do
      let(:mutant_params) { { mutant: { mutant_name: 'Storm', 
          special_abilities: 'Make wind, fly, create lightings' } } }
      
      it 'creates a new mutant from the params' do
        expect{ post :create, mutant_params }.to change{ Mutant.count }.by(1)
      end

      it 'redirects to the start page' do
        post :create, mutant_params

        expect(response).to redirect_to root_url
      end
    end
    context 'the given attributes create a not valid mutant' do
      let(:mutant_params) { { mutant: { mutant_name: '', special_abilities: '' } } }
      it 'creates not mutant' do
        expect{post :create, mutant_params }.not_to change{ Mutant.count }
      end

      it 'renders the new template' do
        post :create, { mutant: mutant_params }
        expect(response).to render_template(:new)
      end
      it 'has an errors' do
        post :create, { mutant: mutant_params }
        expect(assigns(:mutant).errors).not_to be_empty
      end
    end
  end

  describe "patch 'update'" do
    it 'changes the mutants team' do
      team = Team.create(name: "Aplha Team")
      patch :update, { id: storm.id, mutant: { team_id: team.id } }
      expect(assigns(:mutant).team).to eql team
    end

    it 'changes nothing else' do
      patch :update, { id: storm.id, mutant: { mutant_name: 'other name' } }
      expect(assigns(:mutant).mutant_name).to eql storm.mutant_name
    end
  end

  describe "delete 'destroy'" do
    it "returns http success" do
      
      delete :destroy, id: storm.id
      expect(Mutant.exists? storm.id ).to be_falsey
    end

    it 'redirect to the url' do
      delete :destroy, id: storm.id
      expect(response).to redirect_to root_url
    end
  end
end
