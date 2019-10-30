require 'rails_helper'

describe Product do
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:productivity) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:subcategory) }
  end