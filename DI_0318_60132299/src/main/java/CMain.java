import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class CMain {

	public static void main(String[] args) {

		ApplicationContext factory = 
				new ClassPathXmlApplicationContext(new String[]{"applicationContext.xml"});
		
		Professor professor = (Professor)factory.getBean("professor"); //아이디를 파라메터로 주면 객체생성
		Lecture lecture = (Lecture)factory.getBean("lecture");
		Student student = (Student)factory.getBean("student");
		
		professor.addLecture(lecture);
		lecture.addStudents(student);
		professor.showLecture();

	}

}
