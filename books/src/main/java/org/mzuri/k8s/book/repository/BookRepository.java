package org.mzuri.k8s.book.repository;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.SneakyThrows;
import org.mzuri.k8s.book.domain.Book;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Repository;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.util.List;

@Repository
public class BookRepository {

    private final List<Book> books;

    @SneakyThrows
    public BookRepository() {
        //load book database from json

        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.findAndRegisterModules();

        ResourceLoader resourceLoader = new DefaultResourceLoader();
        Resource resource = resourceLoader.getResource("classpath:books.json");

        books = objectMapper.readValue(resource.getFile(), new TypeReference<List<Book>>(){});
    }

    public Flux<Book> findAll() {
        return Flux.fromIterable( books );
    }

    public Mono<Book> findOne(String isbn) {
        //TODO how to deal with optional/mono
        Book book =  books.stream().filter( b -> b.getIsbn().equals(isbn)).findFirst().orElse(null);

        return Mono.just(book).switchIfEmpty(Mono.empty());
    }
}
