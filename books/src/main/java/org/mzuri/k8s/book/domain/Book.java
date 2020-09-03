package org.mzuri.k8s.book.domain;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class Book {
        private String isbn;
        private String title;
        private String subtitle;
        private String author;
        private LocalDateTime published;
        private String publisher;
        private String pages;
        private String description;
        private String website;
}
