# frozen_string_literal: true

module SidenavHelper
  def active_link_class(link)
    current_page?(link) ? 'text-slate-300 bg-gray-900' : 'text-slate-400'
  end
end
