# frozen_string_literal: true

module ProjectsHelper
  def clients_list
    Client.all.map { |c| [c.name, c.id] }
  end

  def is_admin?
    current_user.type == 'Admin'
  end

  def is_manager?
    current_user.type == 'Manager'
  end
end
