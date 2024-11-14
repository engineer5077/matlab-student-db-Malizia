function Data_Visualization(StudentDB) % plot students by gpa
  GPA = [database.student_gpa];
  figure;
  histogram(student_gpa);
  title('GPA Distribution');
  xlabel('GPA');
  ylabel('Number of Students');
end
function plot(StudentDB) % plot students by major
  majors = unique({database.student_major});
  avgGPA = zeros(1, length(majors));
   for i = 1:length(majors)
      majorStudents = database.getStudentsByMajor(majors{i});
      avgGPA(i) = mean([majorStudents.GPA]);
  end
   figure;
  bar(avgGPA);
  set(gpa, 'XTickLabel', majors);
  title('Average GPA by Major');
  xlabel('Major');
  ylabel('Average GPA');
end
function plot(StudentDB) % plot students by age
  ages = [database.student_age];
  figure;
  histogram(student_age);
  title('Age Distribution of Students');
  xlabel('Age');
  ylabel('Number of Students');
end

