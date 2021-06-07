class CadastroUsuarioAmeScreen

    def initialize
      @home = 'br.com.dudstecnologia.cadastrodeclientes:id/toolbar'
      @btn_more = 'android.widget.ImageButton'
      @btn_buscar = 'search'
      @title = 'title'
      @btn_favoritos = 'favorite'

      
    end
  
    def home
      find_element(id:@home).displayed? 
      # wait_for_element(id: @home, timeout: 5)
    
    end

    def tocar_cadastro 

      # find_elements(class: 'android.widget.ImageButton').text('').click
    
    end
    # def buscar_filmes
    #   @filmes = 'batman forever'
    #   find_element(id: @buscar_filme).send_keys(@filmes)
    #   find_element(id: @btn_buscar).click
    # end
  
    # def titulo_filme
    #   wait_for_element(id: @title, timeout: 5)
    # end
  
    # def tocar_favoritos
    #   find_element(id: @btn_favoritos).click
    #   find_elements(class: 'android.widget.TextView').text('Favoritos').click
    # end
  
    # def vejo_favorito
    #   wait_for_element(id: @title, timeout: 5)
    # end



end

  
  