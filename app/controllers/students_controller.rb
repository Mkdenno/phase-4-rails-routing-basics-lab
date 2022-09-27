class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.all.order(grade: :desc)
        render json: grades
    end

    def highest_grade
        highest= Student.order(grade: :desc)
        highest1=highest.first
        render json: highest1
    end
end
