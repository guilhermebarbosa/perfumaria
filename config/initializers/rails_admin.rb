RailsAdmin.config do |config|
  config.model Company do
    list do
      field :id
      field :created_at
      field :updated_at
    end
    edit do
      field :description do
        ckeditor true
      end
      field :description_home do
        ckeditor true
      end
    end
  end
  
  config.model Gallery do
    list do
      field :id
      field :created_at
      field :updated_at
    end
    edit do
      field :description do
        ckeditor true
      end
    end
  end
  
  config.model Service do
    list do
      field :id
      field :created_at
      field :updated_at
    end
    edit do
      field :description do
        ckeditor true
      end
    end
  end
  
  config.model Location do
    list do
      field :id
      field :created_at
      field :updated_at
    end
    edit do
      field :image
      field :description do
        ckeditor true
      end
    end
  end
  
  config.model Home do
    list do
      field :id
      field :created_at
      field :updated_at
    end
    edit do
      field :image
      field :operation do
        ckeditor true
      end
    end
  end
end