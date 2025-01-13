enum TaskStatus {
  notStarted,
  inProgress,
  completed,
  archived;

  String get description {
    switch (this) {
      case TaskStatus.notStarted:
        return 'Task is not started yet';
      case TaskStatus.inProgress:
        return 'Task is in progress';
      case TaskStatus.completed:
        return 'Task is completed';
      case TaskStatus.archived:
        return 'Task is archived';
    }
  }

  bool get isCompleted {
    return this == TaskStatus.completed;
  }
}

class Task {
  final int taskId;
  String taskName;
  TaskStatus status;

  Task({required this.taskId, required this.taskName, this.status = TaskStatus.notStarted});

  void updateStatus(TaskStatus newStatus) {
    status = newStatus;
  }

  void printTaskDetails() {
    print('Task #$taskId: $taskName');
    print('Status: ${status.description}');
    print('Is the task completed? ${status.isCompleted ? "Yes" : "No"}');
  }
}

void main() {
  var task1 = Task(taskId: 1, taskName: 'Write documentation');
  var task2 = Task(taskId: 2, taskName: 'Develop login feature', status: TaskStatus.inProgress);
  

  task1.printTaskDetails(); 
  task2.printTaskDetails(); 


  task1.updateStatus(TaskStatus.completed);
  task1.printTaskDetails(); 
}
