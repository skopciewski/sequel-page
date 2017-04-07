# frozen_string_literal: true

require "spec_helper"
require "sequel/extensions/page"

module Sequel
  module Extensions
    describe Page do
      Given(:dataset) { Sequel.mock.dataset.extension(:page) }

      context "without pagination" do
        Then { dataset.opts[:limit].nil? }
        And { dataset.opts[:offset].nil? }
      end

      context "with page" do
        When(:result) { dataset.page(page, per_page) }

        context "when first page given" do
          Given(:page) { 1 }
          Given(:per_page) { 20 }
          Then { result.opts[:limit] == per_page }
          And { result.opts[:offset] == 0 }
        end

        context "when second page given" do
          Given(:page) { 2 }
          Given(:per_page) { 30 }
          Then { result.opts[:limit] == per_page }
          And { result.opts[:offset] == 30 }
        end
      end
    end
  end
end
