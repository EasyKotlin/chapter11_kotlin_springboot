package com.easy.kotlin.chapter11_kotlin_springboot.mvcconfig

import org.springframework.context.annotation.Configuration
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter

/**
 * Created by jack on 2017/7/19.
 */

@Configuration
class WebMvcConfig : WebMvcConfigurerAdapter() {
    // 注册简单请求转发跳转View的RequestMapping Controller
    override fun addViewControllers(registry: ViewControllerRegistry?) {
        //写文章的RequestMapping
        registry?.addViewController("addArticleView")?.setViewName("addArticleView")
    }
}
