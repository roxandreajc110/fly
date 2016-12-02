module VcHelper
  def current_user
    puts "CALLING VC HELPER"
    @current_user ||= current_client ? current_client : current_admin ? current_admin : nil
  end
end
