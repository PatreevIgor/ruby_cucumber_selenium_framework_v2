require 'spec_helper'

describe Pages::Google::GooglePage do
  subject { described_class.new }
  before { $driver.navigate.to subject.url }

  describe 'search_form' do
    it { expect(subject.search_form.displayed?).to eq(true) }
  end

  context 'check buttons' do
    before { subject.input_text_to_search_form('text') }

    describe "button('Пошук Google')" do
      let(:button_name) { 'Пошук Google' }

      it { expect(subject.button(button_name).displayed?).to eq(true) }
    end

    describe "button('Мне пашанцуе')" do
      let(:button_name) { 'Мне пашанцуе' }

      it { expect(subject.button(button_name).displayed?).to eq(true) }
    end
  end
end
