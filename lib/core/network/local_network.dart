class LocalNetwork {
  Future<void> init() async {}

  // Batch Queries
  Future<void> addBatch() async {}

  Future<void> deleteBatch() async {}

  Future<void> getAllBatches() async {}

// Course Queries
  Future<void> addCourse() async {}

  Future<void> deleteCourse() async {}

  Future<void> getAllCourses() async {}

// Student Queries
  Future<void> addStudent() async {}

  Future<void> deleteStudent() async {}

  Future<void> getAllStudents() async {}

  Future<void> loginStudent(String username, String password) async {}
}
