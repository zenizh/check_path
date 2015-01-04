require 'rails_helper'

describe Rails::CheckPath::Helper do
  subject { helper }

  context 'when access root_path' do
    before { allow(helper.request).to receive_messages(path: root_path) }

    it { is_expected.to     be_root_path }
    it { is_expected.not_to be_posts_path }
  end

  context 'when access posts_path' do
    before { allow(helper.request).to receive_messages(path: posts_path) }

    it { is_expected.to     be_posts_path }
    it { is_expected.not_to be_root_path }
  end

  context 'when access new_post_path' do
    before { allow(helper.request).to receive_messages(path: new_post_path) }

    it { is_expected.to be_new_post_path }
  end

  context 'when access edit_post_path(id: 1)' do
    before { allow(helper.request).to receive_messages(path: edit_post_path(id: 1)) }

    it { is_expected.to     be_edit_post_path(id: 1) }
    it { is_expected.not_to be_edit_post_path(id: 2) }
  end

  context 'when access post_path(id: 1)' do
    before { allow(helper.request).to receive_messages(path: post_path(id: 1)) }

    it { is_expected.to     be_post_path(id: 1) }
    it { is_expected.not_to be_post_path(id: 2) }
  end
end
