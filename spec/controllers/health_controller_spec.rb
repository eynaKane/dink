RSpec.describe HealthController, type: :controller do
  describe '#index' do
    it 'renders successfully' do
      get :index
      expect(response.status).to eq(200)
      expect(response.body).to eq('DINK is up! :)')
    end
  end
end
