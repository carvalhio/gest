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

  def levels
  @grades = ['6º ano', '7º ano', '8º ano', '9º ano']
  @stage = params[:stage]
  @type = params[:type]
  @level = params[:level]
  @dates = ['2024-01-15'.to_date, '2024-02-20'.to_date, '2024-03-10'.to_date, '2024-04-05'.to_date]
  @subjects = [
    ['Matemática', 'Ciências'],  # Subjects for '6º ano'
    ['História', 'Geografia'],  # Subjects for '7º ano'
    ['Português', 'Inglês'],    # Subjects for '8º ano'
    ['Física', 'Química']       # Subjects for '9º ano'
  ]
  Rails.logger.info "Grades: #{@grades.inspect}"
Rails.logger.info "Dates: #{@dates.inspect}"
Rails.logger.info "Subjects: #{@subjects.inspect}"

end


   def new_exam_date
    @grades = ['6º ano', '7º ano', '8º ano', '9º ano'] # Example grades
  end

  def create_exam_date
    grade = params[:grade]
    date = params[:date]
    subjects = params[:subjects].split(',').map(&:strip)

    # Save the data to a model or a persistent storage (e.g., database)
    # Example (if using ActiveRecord):
    # ExamDate.create(grade: grade, date: date, subjects: subjects)

    flash[:success] = "Data e disciplinas registradas com sucesso!"
    redirect_to levels_path
  end

end
