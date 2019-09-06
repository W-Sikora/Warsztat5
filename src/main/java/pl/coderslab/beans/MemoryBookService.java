package pl.coderslab.beans;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MemoryBookService {
    private List<Book> list;

    public MemoryBookService() {
        list = new ArrayList<>();
        list.add(new Book(1L, "9788324631766", "Thinking in Java", "Bruce Eckel",
                "Helion", "programming"));
        list.add(new Book(2L, "9788324627738", "Rusz glowa, Java.",
                "Sierra Kathy, Bates Bert", "Helion", "programming"));
        list.add(new Book(3L, "9780130819338", "Java 2. Podstawy",
                "Cay Horstmann, Gary Cornell", "Helion", "programming"));
    }

    public List<Book> getList() {
        return list;
    }

    public void setList(List<Book> list) {
        this.list = list;
    }

    public void addBook (Book book){
        list.add(book);
    }

    public Book getBookById(long id){
        for (Book book: list){
            if (book.getId()==id){
                return book;
            }
        }
        return null;
    }

    public void editBook(Book book){
        for( int i = 0; i < list.size(); i++) {
            if (list.get(i).getId()==book.getId()){
                list.set(i, book);
            }
        }
    }

    public void deleteBook(long id){
        for( int i = 0; i < list.size(); i++) {
            if (list.get(i).getId()==id){
                list.remove(i);
            }
        }
    }

}

