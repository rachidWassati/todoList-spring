package org.rachidj.controller;

import lombok.NonNull;
import lombok.extern.slf4j.Slf4j;
import org.rachidj.model.TodoData;
import org.rachidj.model.TodoItem;
import org.rachidj.service.ITodoService;
import org.rachidj.service.TodoService;
import org.rachidj.utils.AttributeNames;
import org.rachidj.utils.Mappings;
import org.rachidj.utils.ViewNames;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;

@Slf4j
@Controller
public class TodoController {

    //=== fields ===
    private final ITodoService todoService;

    //=== Constructor ===
    @Autowired
    public TodoController(ITodoService todoService) {
        this.todoService = todoService;
    }

    @ModelAttribute
    public TodoData todoData() {
        return todoService.getData();
    }

    // === Show Items List ===
    @GetMapping(Mappings.ITEMS)
    public String getItems() {
        return ViewNames.ITEMS;
    }

    // === Add item with Form
    @PostMapping(Mappings.ADD_ITEM)
    public String processItem(@ModelAttribute(AttributeNames.TODO_ITEM) TodoItem todoItem) {
        log.info("todoItem from Form = {}", todoItem);
        if(todoItem.getId() == 0) {
            todoService.addItem(todoItem);
        } else {
            todoService.updateItem(todoItem);
        }

        return "redirect:/" + Mappings.ITEMS;
    }

    @GetMapping(Mappings.ADD_ITEM)
    public String addEditItem(Model model,
                              @RequestParam(required = false, defaultValue = "-1") int id) {
        log.info("Editing id = {}", id);
        TodoItem todoItem = todoService.getItem(id);
        if(todoItem == null){
            todoItem = new TodoItem("", "", LocalDate.now());
        }

        model.addAttribute(AttributeNames.TODO_ITEM, todoItem);
        return ViewNames.ADD_ITEM;
    }

    // === Delete item ===
    @GetMapping(Mappings.DELETE_ITEM)
    public String deleteItem(@NonNull @RequestParam int id) {
        log.info("Deleting item with id = {}", id);
        todoService.removeItem(id);
        return "redirect:/" + Mappings.ITEMS;
    }

    // === Show Item ===
    @GetMapping(Mappings.VIEW_ITEM)
    public String viewItem(@RequestParam int id, Model model) {
        log.info("View item id = {}", id);
        TodoItem todoItem = todoService.getItem(id);
        model.addAttribute(AttributeNames.TODO_ITEM, todoItem);

        return ViewNames.VIEW_ITEM;
    }
}
