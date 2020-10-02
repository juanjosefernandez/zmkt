module ApplicationHelper

    def user_avatar(user, size=40)
        if user.avatar.attached?
            user.avatar.variant(resize: "#{size}x#{size}!")
        else
            gravatar_image_url(user.email, size: size)
        end
    end

    def active_page(active_page)
        @active == active_page ? "active" : ""
      end

      def cart_count_over_one
        if @cart.line_items.count > 0 
            count = 0
                @cart.line_items.each do |l|
                    count+=l.quantity
                end           
            # return "<span class='tag is-dark'>#{@cart.line_items.count}</span>".html_safe
            return "<span class='tag is-dark'>#{count}</span>".html_safe
        end
      end
    
      def cart_has_items
        return @cart.line_items.count > 0
      end
    
end
