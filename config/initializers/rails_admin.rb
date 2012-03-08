RailsAdmin.config do |config|
  config.model Company do
    label 'Empresa'
    label_plural 'Empresa'
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
  
  config.model Contact do
    label 'Fale Conosco'
    label_plural 'Fale Conosco'
    list do
      field :id
      field :name
      field :telephone
      field :email
      field :subject
      field :created_at
      end
  end
  
  config.model Gallery do
    label 'Galeria'
    label_plural 'Galeria'
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
    label 'Serviço'
    label_plural 'Serviço'
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
    label 'Localização'
    label_plural 'Localização'
    list do
      field :id
      field :created_at
      field :updated_at
    end
    edit do
      field :description_left do
        ckeditor true
      end
      field :description_right do
        ckeditor true
      end
    end
  end
  
  config.model Home do
    label 'Home'
    label_plural 'Home'
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