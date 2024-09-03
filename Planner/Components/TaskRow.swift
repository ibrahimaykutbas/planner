import SwiftUI

struct TaskRow: View {
    @Binding var task: EventTask
    var focusedTasks: FocusState<EventTask?>.Binding
    
    var body: some View {
        HStack {
            Button {
                task.isCompleted.toggle()
            } label: {
                Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
            }
            .buttonStyle(.plain)
            
            TextField("Task Description",text: $task.text, axis: .vertical)
                .focused(focusedTasks, equals: task)
            
            Spacer()
        }
    }
}
