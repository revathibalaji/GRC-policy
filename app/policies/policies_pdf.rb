class PoliciesPdf < Prawn::Document
    def initialize(policy)
        super(top_margin: 50)
        @policy = policy
        logo
        stroke_horizontal_rule
        pad_top(20) {}
        text "Policy Report",:align => :center, :size => 18, :style => :bold        
        move_down(30)
        text "Policy Name: #{@policy.p_name}", :size => 10 
        move_down(30)
        text "Policy refernce: #{@policy.p_ref}", :size => 10 
        move_down(30)
        text "Control Name: #{@policy.c_name}", :size => 10 
        move_down(30)
        text "Control refernce: #{@policy.c_ref}", :size => 10 
        move_down(30)
        text "Policy scope: #{@policy.scope}", :size => 10 
        move_down(30)
        text "Policy objectives: #{@policy.objectives}", :size => 10 

    end
    def logo
         logopath =  "#{Rails.root}/public/images/FixNix.png"
         image logopath, :width => 177, :height => 65
         move_down 10
         draw_text "FixNix InfoSec Solutions", :at => [220, 575], size: 22
    end
end
