package pl.coderslab.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.beans.Book;
import pl.coderslab.beans.MemoryBookService;

import java.util.List;

@RestController
@RequestMapping("/books")
public class BookController {
    @Autowired
    MemoryBookService memoryBookService;

    @RequestMapping("")
    public List<Book> allBooks() {
        return memoryBookService.getList();
    }

    @RequestMapping("/{id}")
    public Book getBookById(@PathVariable long id) {
        return memoryBookService.getBookById(id);
    }

    @PostMapping(value = "/add", consumes = MediaType.APPLICATION_JSON_VALUE)
    public void addBook(@RequestBody Book book) {
        memoryBookService.addBook(book);
    }

    @PutMapping("/edit")
    public void editBook(@RequestBody Book book){
        memoryBookService.editBook(book);
    }

    @DeleteMapping("/delete/{id}")
    public void deleteBook(@PathVariable long id){
        memoryBookService.deleteBook(id);
    }

    @RequestMapping("/hello")
    public String hello() {
        return "{hello: World}";
    }

    @RequestMapping("/helloBook")
    public Book helloBook() {
        return new Book(1L, "9788324631766", "Thinking in Java",
                "Bruce Eckel", "Helion", "programming");
    }

}
