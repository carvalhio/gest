class PagesController < ApplicationController
  def home
  end
    def exams
    @stages = ['Etapa 1', 'Etapa 2', 'Etapa 3', 'Etapa 4']
  end

  def stages
    @stage = params[:stage]
    @types = ['Parcial', 'Global']
  end

  def types
    @stage = params[:stage]
    @type = params[:type]
    @levels = ['Anos Iniciais', 'Anos Finais', 'Ensino Médio']
  end

  def levels
    @stage = params[:stage]
    @type = params[:type]
    @level = params[:level]
    @dates = ['2024-01-15', '2024-02-20'] # Exemplos
  end

  def schedule
    @stage = params[:stage]
    @type = params[:type]
    @level = params[:level]
    @date = params[:date]

    @subjects = [
      { name: 'Matemática', professor: 'Liliane Alves', shift: 'Manhã', status: 'Pendente' },
      { name: 'História', professor: 'Júnior Alves', shift: 'Tarde', status: 'Recebido' }
    ]
  end

  def manager
    @stage = params[:stage]
    @type = params[:type]
    @level = params[:level]
    @date = params[:date]

    @tests = [
      { subject: 'Matemática', professor: 'Liliane Alves', shift: 'Manhã', status: 'Pendente' },
      { subject: 'História', professor: 'Júnior Alves', shift: 'Tarde', status: 'Recebido' }
    ]
  end
end
