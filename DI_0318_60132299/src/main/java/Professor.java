
public class Professor {
	
	private String name;
	private Lecture lecture;
	
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	
	public Professor(){ }
	public Professor(String name) {
		this.name = name;
	}
	public void addLecture(Lecture lecture) {
		// TODO Auto-generated method stub
		this.lecture = lecture;
	}
	public void showLecture() {
		// TODO Auto-generated method stub
		System.out.println(lecture.getName());
		
		if(!(lecture.getStudents().isEmpty())) {
			for(Student student: lecture.getStudents()) {
				System.out.println(student.getName());
			}
		}
	}
}
