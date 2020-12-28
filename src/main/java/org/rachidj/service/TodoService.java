package org.rachidj.service;

import lombok.Getter;
import lombok.extern.slf4j.Slf4j;
import org.rachidj.model.TodoData;
import org.rachidj.model.TodoItem;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class TodoService implements ITodoService{

    @Getter
    private TodoData data = new TodoData();

    @Override
    public void addItem(TodoItem toAdd) {
        data.addItem(toAdd);
    }

    @Override
    public void removeItem(int id) {
        data.removeItem(id);
    }

    @Override
    public TodoItem getItem(int id) {
        return data.getItem(id);
    }

    @Override
    public void updateItem(TodoItem toUpdate) {
        data.updateItem(toUpdate);
    }
}
