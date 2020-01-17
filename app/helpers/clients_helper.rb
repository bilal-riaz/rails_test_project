# frozen_string_literal: true

module ClientsHelper
  def is_admin?
    current_user.type == 'Admin'
  end

  def is_manager?
    current_user.type == 'Manager'
  end

  def is_developer?
    current_user.type == 'Developer'
  end
end
