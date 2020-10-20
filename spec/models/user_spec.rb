require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#name_sama' do
    context 'nameに値がある場合' do
      let(:user) { User.new() }
      subject { user.name_sama('鈴木') }
      it 'name + 様を返す' do
        expect(subject).to eq '鈴木様'
      end
    end
    context 'nameに値がない場合' do
      let(:user) { User.new() }
      subject { user.name_sama('') }
      it 'nilを返す。様を返さない' do
        expect(subject).to eq  nil
      end
    end
  end
end
