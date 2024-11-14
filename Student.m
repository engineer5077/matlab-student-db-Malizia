classdef Student
   properties
       student_id = input("What's the ID of the Student: ", "s");
       student_name = input("What's the full name of the Student: ", "s");
       student_age = input("What's the age of the Student: ", "s");
       student_gpa = input("What's the gpa of the Student: ");
       student_major = input("What's the major of the Student: ", "s");
   end
   methods
       function res = create_student(currentObj, student_id, student_name, student_age, student_gpa, student_major)
           currentObj.student_id = student_id ;
           currentObj.student_name = student_name ;
           currentObj.student_age = student_age ;
           currentObj.student_gpa = student_gpa ;
           currentObj.student_major = student_major ;
           res = currentObj;
       end
       function res = initStudent(currentObj)
           % get information from user's i/o
           currentObj.student_id = input("What's the ID of the Student: ", "s");
           currentObj.student_name = input("What's the full name of the Student: ", "s");
           currentObj.student_age = input("What's the age of the Student: ", "s");
           currentObj.student_gpa = input("What's the gpa of the Student: ");
           currentObj.student_major = input("What's the major of the Student: ");
           res = currentObj;
       end
       function res = showStudent(currentObj)
           fprintf("Student ID: %s \n", currentObj.student_id)
           fprintf("Student Full Name: %s \n", currentObj.student_name)
           fprintf("Student Age: %s \n", currentObj.student_age)
           fprintf("Student GPA: %s \n", currentObj.student_gpa)
           fprintf("Student Major: %s \n", currentObj.student_major)
           res = 1;
       end
       function res = setStudentName(currentObj, studentName)
           currentObj.student_id = student_id;
           currentObj.showStudent()
           res = currentObj
       end
   end
end
