class PatientsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :move_to_index, only: [:edit, :update, :destroy]

 
  def index
    @patients = Patient.includes(:user).order(created_at: :desc) 
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      render :create
    else
      render :new
    end
  end

  def show 
    @comment = Comment.new
    @comments = @patient.comments.includes(:user)
  end

  def search
    @patients = Patient.search(params[:keyword])
  end

  def edit
  end

  def update
    if @patient.update(patient_params)
      redirect_to patient_path
     else
     render :edit
     end
  end

  def destroy
    if @patient.destroy 
      redirect_to root_path
    end
  end
  
  private 

  def set_item
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:name, 
      :age, :sex_id,
       :height,
        :weight,
          :family,
           :disease_name,
            :medical_history,
             :surgical_history,
             :therapist_in_charge,
             :image,
             :turn_over_id,
      :moving_on_bed_id,
      :get_up_id,
      :sitting_position_id,
      :stand_up_id,
      :standing_id,
      :transfer_id,
      :wheelchair_operation_id,
      :walking_id,
      :stairs_id,
      :meal_1_id,
      :shape_1_id,
      :balneum_1_id,
      :outer_wear_id,
      :under_wear_id,
      :toilet_1_id,
      :urination_1_id,
      :defecation_1_id,
      :bed_transfer_1_id,
       :toilet_transfer_1_id,
       :bathtub_transfer_1_id,
      :walking_1_id,
      :stair_1_id,
      :understanding_1_id,
      :expression_1_id,
      :alternating_current_1_id,
      :solving_1_id,
      :memory_1_id,
      :total_1,
      :meal_2_id,
      :transfer_2_id,
      :shape_2_id,
      :toilet_2_id,
      :balneum_2_id,
      :walking_2_id,
      :stair_2_id,
      :changing_clothes_id,
      :urination_2_id,
       :defecation_2_id,
       :total_2,
      :right_upper_limb_brunnstrom_id,
      :left_upper_limb_brunnstrom_id,
      :right_lower_limb_brunnstrom_id,
      :left_lower_limb_brunnstrom_id,
      :right_finger_brunnstrom_id,
       :left_finger_brunnstrom_id,
       :relationship_sole_id,
      :left_right_difference_id,
      :pain_area,
      :appearance_time,
      :degree_of_pain,
      :factor_tissue_id,
      :rom_part_degree,
      :joint_capsule_id,
      :soft_tissue_id,
       :muscle_weakness,
      :muscle_weakness_factor,
      :paresthesia,
      :paresthesia_impact,
      :alignment_id,
      :alignment_comment,
      :postural_tension_id,
      :impact_id,
      :right_smd,
      :left_smd,
      :right_tmd,
      :left_tmd,
      :foot_length_comment,
       :speed,
      :stride,
      :durability,
      :walking_pattern,
      :foot_position,
      :upset_id,
       :redundancy_id,
       :applicability_id,
      :gait_id,
     :dementia_degree,
      :impact_daily_life,
      :higher_brain_dysfunction_comment,
      :sense_cooperation,
      :sense_cooperation_impact,
       :others,
      :generalization).merge(user_id: current_user.id)
  end

  def move_to_index
    if @patient.user_id != current_user.id
      redirect_to action: :index
    end
  end



end
