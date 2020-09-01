package org.mzuri.k8s.book.controller;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.mzuri.k8s.book.domain.Book;
import org.mzuri.k8s.book.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@AllArgsConstructor
@NoArgsConstructor
@RequestMapping(path = "/")
public class BookController {

    @Autowired
    private BookRepository bookRepository;

    @GetMapping("/")
    public Flux<Book> findAll() {
        return bookRepository.findAll();
    }

    @GetMapping("/{isbn}")
    public Mono<Book> findOne(@PathVariable("isbn") String isbn) {
        return bookRepository.findOne(isbn);
    }
}
