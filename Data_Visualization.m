function Data_Visualization(database)
   GPAs = [database.Students.GPA];
   figure;
   histogram(GPAs, 'BinWidth', 0.5);
   title('GPA Distribution');
   xlabel('GPA');
   ylabel('Number of Students');
end
function plotAverageGPAByMajor(database)
   majors = unique({database.Students.Major});
   avgGPA = zeros(1, length(majors));
  
   for i = 1:length(majors)
       majorStudents = database.getStudentsByMajor(majors{i});
       avgGPA(i) = mean([majorStudents.GPA]);
   end
  
   figure;
   bar(avgGPA);
   set(gca, 'XTickLabel', majors);
   title('Average GPA by Major');
   xlabel('Major');
   ylabel('Average GPA');
end
function plotAgeDistribution(database)
   ages = [database.Students.Age];
   figure;
   histogram(ages, 'BinWidth', 1);
   title('Age Distribution of Students');
   xlabel('Age');
   ylabel('Number of Students');
end
