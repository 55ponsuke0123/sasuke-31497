class Patient < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :sex_id, presence: true

  VALID_AGE_REGEX = /\A[0-9]+\z/.freeze    
  validates :age, presence: true, format: { with: VALID_AGE_REGEX }   

  VALID_ZENKAKU_REGEX = /\A[ぁ-んァ-ン一-龥]/
          with_options presence: true, format: { with: VALID_ZENKAKU_REGEX } do
          validates :name
          validates :disease_name
          validates :medical_history        
          end

          def was_attached?
            self.image.attached?
          end

          
          extend ActiveHash::Associations::ActiveRecordExtensions
          belongs_to :turn_over
          belongs_to :moving_on_bed
          belongs_to :get_up
          belongs_to :sitting_position
          belongs_to :stand_up
          belongs_to :standing
          belongs_to :transfer
          belongs_to :wheelchair_operation
          belongs_to :walking
          belongs_to :stairs
          belongs_to :meal_1
          belongs_to :shape_1
          belongs_to :balneum_1
          belongs_to :outer_wear
          belongs_to :under_wear
          belongs_to :toilet_1
          belongs_to :urination_1
          belongs_to :defecation_1
          belongs_to :bed_transfer_1
          belongs_to :toilet_transfer_1
          belongs_to :bathtub_transfer_1
          belongs_to :walking_1
          belongs_to :stair_1
          belongs_to :understanding_1
          belongs_to :expression_1
          belongs_to :alternating_current_1
          belongs_to :solving_1
          belongs_to :memory_1
          belongs_to :meal_2
          belongs_to :transfer_2
          belongs_to :shape_2
          belongs_to :toilet_2
          belongs_to :balneum_2
          belongs_to :walking_2
          belongs_to :stair_2
          belongs_to :changing_clothes
          belongs_to :urination_2
          belongs_to :defecation_2
          belongs_to :relationship_sole
          belongs_to :left_right_difference
          belongs_to :alignment
          belongs_to :postural_tension
          belongs_to :impact
          belongs_to :upset
          belongs_to :redundancy
          belongs_to :applicability
          belongs_to :gait
          belongs_to :factor_tissue
          belongs_to :joint_capsule
          belongs_to :soft_tissue
          belongs_to :right_upper_limb_brunnstrom
          belongs_to :left_upper_limb_brunnstrom
          belongs_to :right_lower_limb_brunnstrom
          belongs_to :left_lower_limb_brunnstrom
          belongs_to :right_finger_brunnstrom
          belongs_to :left_finger_brunnstrom

        
end
