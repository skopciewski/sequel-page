# frozen_string_literal: true

# Copyright (C) 2015, 2016, 2017 Szymon Kopciewski
#
# This file is part of SequelPage
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

require "sequel"

module Sequel
  module Extensions
    module Page
      def page(page_no, per_page)
        offset = (page_no - 1) * per_page
        limit(per_page, offset)
      end
    end
  end

  Dataset.register_extension(:page, Extensions::Page)
end
