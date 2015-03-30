import java.util.Vector;


public class Lecture {
	
	private String name;
	private Vector<Student> students;
	public String getName() {return name;}
	public void setName(String name) {this.name = name;}
	
	public Lecture(){ }
	public Lecture(String name) {
		this.name = name;
		this.setStudents(new Vector<Student>());
	}
	public Vector<Student> getStudents() {
		return students;
	}
	public void setStudents(Vector<Student> students) {
		this.students = students;
	}
	public void addStudents(Student student) {
		this.students.add(student);	
	}
	
}
