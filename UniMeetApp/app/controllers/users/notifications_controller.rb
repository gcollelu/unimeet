class Users::NotificationsController < ActivityNotification::NotificationsController
  # GET /:target_type/:target_id/notifications
  # def index
  #   super
  # end

  # POST /:target_type/:target_id/notifications/open_all
  # def open_all
  #   super
  # end

  #GET /:target_type/:target_id/notifications/:id
  #def show
  #  super
  #end

  # DELETE /:target_type/:target_id/notifications/:id
  # def destroy
  #   super
  # end

  # POST /:target_type/:target_id/notifications/:id/open
  def open
     @match = Match.find_by(id: @notification.notifiable_id)
     @matched_activity = Activity.find_by(id: @match.activity_id)
     @matched_user = User.find_by(id: @match.user_id)
     @activity_id = @match.activity_id
   super
   end

  # GET /:target_type/:target_id/notifications/:id/move
  # def move
  #  super
  # end

  # No action routing
  # This method needs to be public since it is called from view helper
  # def target_view_path
  #   super
  # end

  # protected

  # def set_target
  #   super
  # end

  # def set_notification
  #   super
  # end

  # def set_index_options
  #   super
  # end

  # def load_index
  #   super
  # end

  # def controller_path
  #   super
  # end

  # def set_view_prefixes
  #   super
  # end

  # def return_back_or_ajax
  #   super
  # end
end