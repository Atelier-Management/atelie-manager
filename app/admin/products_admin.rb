Trestle.resource(:products) do
  menu do
    item :products, icon: "fa fa-star"
  end

  collection do
    model.includes(:category)
  end

  # Customize the table columns shown on the index view.
  table do
    column :name
    column :color
    column :description
    column :category
    actions
  end

  # Customize the form fields shown on the new/edit views.
  form do |product|
    text_field :name

    row do
      col(xs: 6) { text_field :size, append: "metros" }
      col(xs: 6) { text_field :weight, append: "gramas" }
    end

    text_area :description

    divider
    row do
      col(xs: 3) { text_field :color }
      col(xs: 3) { text_field :tex }
      col(xs: 3) { text_field :crochet_needle }
      col(xs: 3) { text_field :knitting_needle }
    end

    # row do
    # end

    select :category_id, Category.all
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:product).permit(:name, ...)
  # end
end
