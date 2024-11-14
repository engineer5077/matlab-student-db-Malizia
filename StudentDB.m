classdef StudentDB
  properties
      size = 20
      studentList = [Student]
      number_of_students = 0
  end
  methods
      function res = init(currentObj, size)
          currentObj.size = size;
          currentObj.studentList(1:currentObj.size) = Student;
          res = currentObj;
      end
      function res = createUser(currentObj)
          % we compare the number of students we inserted inside the
          % database with the maximum amount of students we are allowed to
          % save inside the database
          if currentObj.number_of_students + 1 > currentObj.size
              fprintf("The database is full! \n");
              res = currentObj;
          else
              % creating a new empty student
              student = Student;
              student = student.initStudent();
              % insert the new user into the database
              % we have number of students in database
              % we will use it as an index of the list
              currentObj.studentList(currentObj.number_of_students + 1) = student;
              currentObj.number_of_students = currentObj.number_of_students   + 1;
              res = currentObj;
          end         
      end
      function res = showStudents(currentObj)
          for i = 1:currentObj.number_of_students
              fprintf('*******************');
              fprintf('User number %d \n', i);
              currentObj.studentList(i).showStudent();
          end
          res = 1;
      end
      function res = save_db_to_file(currentObj, file_name)
          % print the users info into the file
          fileID = fopen(file_name, 'w');
          for i = 1:currentObj.number_of_students
              student = currentObj.studentList(i);
              fprintf(fileID, "%s,%s,%s \n", student.student_id, student.student_name, student.student_major);
          end
          fclose(fileID);
          res = 1;
          % for loop over the studentList from 1 to number_of+students
          %%open file with write permission
          % fprintf using the file id with the student information
          % close the file
          % student_id, first_name, last_name
      end
      function res = load_from_file(currentObj, file_name)
          % load and create students information
          % load from the file
          % loop through the rows of your data
          % create student, and add it to the db
      end
  end
end
