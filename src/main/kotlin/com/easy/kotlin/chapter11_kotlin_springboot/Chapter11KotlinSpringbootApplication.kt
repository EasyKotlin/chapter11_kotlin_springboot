package com.easy.kotlin.chapter11_kotlin_springboot

import com.easy.kotlin.chapter11_kotlin_springboot.dao.ArticleRepository
import com.easy.kotlin.chapter11_kotlin_springboot.entity.Article
import org.springframework.boot.CommandLineRunner
import org.springframework.boot.SpringApplication
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.context.annotation.Bean
import java.util.*

@SpringBootApplication
class Chapter11KotlinSpringbootApplication {
    @Bean
    fun init(repository: ArticleRepository) = CommandLineRunner {
        val article: Article = Article()
        article.author = "Kotlin"
        article.title = "极简Kotlin教程 ${Date()}"
        article.content = "Easy Kotlin ${Date()}"
        repository.save(article)
    }
}

fun main(args: Array<String>) {
    SpringApplication.run(Chapter11KotlinSpringbootApplication::class.java, *args)
}


