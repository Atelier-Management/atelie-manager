Trestle.resource(:subcategories) do
  menu do
    item :subcategories, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  table do
    column :name
    column :category_id
    column :created_at, align: :center
    actions
  end

  # Customize the form fields shown on the new/edit views.
  form do |subcategory|
    select :category_id, Category.all
    text_field :name
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:subcategory).permit(:name, ...)
  # end
end
