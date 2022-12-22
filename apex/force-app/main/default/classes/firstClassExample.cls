public class firstClassExample {
    public static void createlist( String cohortCode, integer maxStudent){
        List <string> studentList= New List<string>();
        for (integer studentNum=1;studentNum<=maxStudent;studentNum++){
            
            studentList.add(cohortCode+studentNum);
        }
        system.debug(studentList);
        system.debug(studentList.size());
    }
    
}