package org.rachidj.service;

import org.rachidj.model.TodoData;
import org.rachidj.model.TodoItem;

public interface ITodoService {
    void addItem(TodoItem toAdd);
    void removeItem(int id);
    TodoItem getItem(int id);
    void updateItem(TodoItem toUpdate);
    TodoData getData();
}
