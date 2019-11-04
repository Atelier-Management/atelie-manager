Trestle.resource(:brands) do
  menu do
    item :brands, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  table do
    column :short_name
    column :full_name
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  form do |brand|
    text_field :short_name
    text_field :full_name
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:brand).permit(:name, ...)
  # end
end
